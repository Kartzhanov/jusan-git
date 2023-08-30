#!/bin/bash

# Получить URL профиля
profile_url=$(curl -s -H "Accept: application/json" https://stepik.org/api/user/me)

# Получить ID профиля из URL
profile_id=$(echo "${profile_url}" | jq '.id')

# Вывести ID профиля
echo "${profile_id}"
