#!/usr/bin/env python3
"""
フィードバックシステム用プロキシサーバー

- /marp/* へのリクエストを localhost:3333 に転送
- HTMLレスポンスにはMarpナビゲーション非表示用CSSを注入
- それ以外は静的ファイルを提供
"""

import http.server
import mimetypes
import os
import re
import socketserver
import sys
import urllib.error
import urllib.request

MARP_PORT = int(os.environ.get('MARP_PORT', 3333))
FEEDBACK_PORT = int(os.environ.get('FEEDBACK_PORT', 8888))
PROJECT_ROOT = os.environ.get('PROJECT_ROOT', os.path.join(os.path.dirname(__file__), '../..'))

# Marpナビゲーション非表示用CSS
MARP_HIDE_NAV_CSS = """
<style>
/* フィードバックシステム用: Marpナビゲーションを非表示 */
.bespoke-marp-osc { display: none !important; }
/* キーボード・クリックによるナビゲーションも無効化 */
body { pointer-events: none !important; }
section { pointer-events: auto !important; }
</style>
"""

class ProxyHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path.startswith('/marp/'):
            self.proxy_to_marp(self.path[5:])
        elif self.path.startswith('/themes/'):
            self.serve_themes_file(self.path)
        else:
            super().do_GET()

    def send_content(self, content, content_type):
        """レスポンスを送信する共通メソッド"""
        self.send_response(200)
        self.send_header('Content-Type', content_type)
        self.send_header('Content-Length', len(content))
        self.end_headers()
        self.wfile.write(content)

    def serve_themes_file(self, path):
        """プロジェクトルートのthemesフォルダからファイルを提供"""
        file_path = os.path.normpath(os.path.join(PROJECT_ROOT, path.lstrip('/')))

        # セキュリティチェック: PROJECT_ROOT外へのアクセスを防止
        if not file_path.startswith(os.path.normpath(PROJECT_ROOT)):
            self.send_error(403, 'Forbidden')
            return

        if not os.path.isfile(file_path):
            self.send_error(404, 'File not found')
            return

        content_type = mimetypes.guess_type(file_path)[0] or 'application/octet-stream'

        try:
            with open(file_path, 'rb') as f:
                self.send_content(f.read(), content_type)
        except IOError as e:
            self.send_error(500, str(e))

    def proxy_to_marp(self, path):
        """Marpサーバーへのプロキシ"""
        marp_url = f'http://localhost:{MARP_PORT}{path}'
        try:
            with urllib.request.urlopen(marp_url) as response:
                content = response.read()
                content_type = response.headers.get('Content-Type', 'text/html')

                if 'text/html' in content_type:
                    content = self.inject_hide_nav_css(content)

                self.send_content(content, content_type)
        except urllib.error.HTTPError as e:
            self.send_error(e.code, str(e.reason))
        except urllib.error.URLError as e:
            self.send_error(502, f'Marpサーバーに接続できません: {e.reason}')

    def inject_hide_nav_css(self, content):
        """HTMLにナビゲーション非表示用CSSを注入し、相対パスをプロキシ経由に変換"""
        html = content.decode('utf-8')
        # </head>の前にCSSを挿入
        html = html.replace('</head>', MARP_HIDE_NAV_CSS + '</head>')

        # 相対パス（/themes/など）をプロキシ経由（/marp/themes/）に変換
        # src="/themes/ → src="/marp/themes/
        # href="/themes/ → href="/marp/themes/
        html = re.sub(r'(src|href)="(/[^"]+)"', r'\1="/marp\2"', html)

        return html.encode('utf-8')

    def log_message(self, format, *args):
        """ログ出力をstderrに"""
        sys.stderr.write(f"[{self.log_date_time_string()}] {format % args}\n")

def main():
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    with socketserver.TCPServer(("", FEEDBACK_PORT), ProxyHandler) as httpd:
        print(f"フィードバックサーバーを起動しました: http://localhost:{FEEDBACK_PORT}")
        print(f"Marpプロキシ: /marp/* -> http://localhost:{MARP_PORT}/*")
        print("終了するには Ctrl+C を押してください")
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\nサーバーを停止します...")

if __name__ == '__main__':
    main()
