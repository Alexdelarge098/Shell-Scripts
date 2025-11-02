#!/bin/bash

TODO_FILE=~/todo.txt
touch "$TODO_FILE"

case $1 in
    add)
        shift
        echo "$*" >> "$TODO_FILE"
        echo "✅ Task added: $*"
        ;;
    view)
        echo "📋 Your Tasks:"
        if [ -s "$TODO_FILE" ]; then
            nl -w2 -s'. ' "$TODO_FILE"
        else
            echo "No tasks found!"
        fi
        ;;
    remove)
        nl -w2 -s'. ' "$TODO_FILE"
        read -p "Enter task number to remove: " num
        sed -i "${num}d" "$TODO_FILE"
        echo "❌ Task removed!"
        ;;
    *)
        echo "Usage:"
        echo "  $0 add <task>     → Add a new task"
        echo "  $0 view           → View all tasks"
        echo "  $0 remove         → Remove a task"
        ;;
esac
