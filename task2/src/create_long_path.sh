#!/bin/bash

base_dir="/tmp"
mkdir -p "$base_dir"
current_path="$base_dir"

dir_name=$(printf 'a%.0s' {1})

while [ ${#current_path} -lt 4092 ]; do
    mkdir "$current_path/$dir_name"
    current_path="$current_path/$dir_name"
done

echo "Создана структура директорий с длиной пути 4096 символов."

cd "$current_path"
