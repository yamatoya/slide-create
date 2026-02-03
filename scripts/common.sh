#!/bin/bash
# 共通関数定義

# PIDファイルで管理されているサーバーを停止
# 引数: $1 = PIDファイルパス, $2 = サーバー名（表示用）
stop_server_if_running() {
    local pid_file="$1"
    local server_name="${2:-サーバー}"

    [ -f "$pid_file" ] || return 0

    local old_pid
    old_pid=$(cat "$pid_file")
    if kill -0 "$old_pid" 2>/dev/null; then
        echo "既存の${server_name}(PID: $old_pid)を停止します..."
        kill "$old_pid" 2>/dev/null || true
        sleep 1
    fi
    rm -f "$pid_file"
}

# サーバーの起動を待機
# 引数: $1 = URL, $2 = 最大待機回数, $3 = PIDファイル, $4 = サーバーPID
wait_for_server() {
    local url="$1"
    local max_attempts="${2:-30}"
    local pid_file="$3"
    local server_pid="$4"

    echo "サーバーの起動を待機中..."
    for i in $(seq 1 "$max_attempts"); do
        if curl -s "$url" > /dev/null 2>&1; then
            return 0
        fi
        sleep 0.5
    done

    echo "エラー: サーバーの起動がタイムアウトしました"
    kill "$server_pid" 2>/dev/null || true
    rm -f "$pid_file"
    return 1
}
