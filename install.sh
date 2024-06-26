#!/usr/bin/env bash

{
    oops() {
        echo "$0:" "$@" >&2
        exit 1
    }

    git() {
        nix-shell -p git --run "git $*"
    }

    jq() {
        nix-shell -p jq --run "jq $*"
    }

    tag="$(curl -s -L https://api.github.com/repos/erifrats/starship/tags | jq -r '.[0].name')"
    tmp="$(mktemp -d)"

    # Fetch and build the source code.
    git clone --recursive --branch="$tag" https://github.com/erifrats/starship.git "$tmp" 1> /dev/null || oops "fetch failed"
    nix-env -i -f "$tmp" || oops "install failed"

    exec starship "$@"
}
