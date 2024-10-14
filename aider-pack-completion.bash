#!/usr/bin/env bash

_aider_pack_completion() {
    local cur prev words cword
    _init_completion || return

    # Use the same config file path as in the main script
    AIDER_PACKS_CONFIG_FILE="${AIDER_PACKS_CONFIG_FILE:=$HOME/.aider-pack.json}"

    # If it's the first word, suggest pack names and help options
    if [ $cword -eq 1 ]; then
        local packs
        if [ -f "$AIDER_PACKS_CONFIG_FILE" ]; then
            packs=$(jq -r 'keys[]' "$AIDER_PACKS_CONFIG_FILE")
        fi
        COMPREPLY=($(compgen -W "$packs --help -h" -- "$cur"))
        return 0
    fi

    # For subsequent words, suggest aider options
    local aider_options
    aider_options=$(aider --help | grep -E '^\s+--' | awk '{print $1}' | sed 's/,$//')
    COMPREPLY=($(compgen -W "$aider_options" -- "$cur"))
}

# Register the completion function
complete -F _aider_pack_completion aider-pack
