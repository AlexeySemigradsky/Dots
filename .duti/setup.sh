#!/bin/bash

curl "https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml" \
    | yq eval "to_entries | .[].value.extensions | select(. != null) | unique | .[]" - \
    | xargs -L 1 -I "{}" duti -s com.microsoft.VSCode {} all