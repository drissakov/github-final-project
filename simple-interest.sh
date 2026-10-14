#!/usr/bin/env bash
# Calculate simple interest from principal, annual percentage rate, and years.

set -euo pipefail
export LC_ALL=C

read_number() {
    local prompt="$1"
    local value

    printf '%s' "$prompt" >&2
    if ! IFS= read -r value; then
        printf '\nError: missing input.\n' >&2
        return 1
    fi

    if [[ ! "$value" =~ ^([0-9]+([.][0-9]+)?|[.][0-9]+)$ ]]; then
        printf 'Error: enter a non-negative number using a period for decimals.\n' >&2
        return 1
    fi

    printf '%s' "$value"
}

principal=$(read_number 'Enter principal: ')
rate=$(read_number 'Enter annual rate (%): ')
years=$(read_number 'Enter time in years: ')

awk -v P="$principal" -v R="$rate" -v T="$years" \
    'BEGIN { printf "Simple interest: %.2f\n", (P * R * T) / 100 }'
