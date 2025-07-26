#!/bin/bash
# Given a directory:
# - fuzzy matches against filenames (fzf/sk/...)
# - exact matches against contents (rg)
# Key bindings:
# enter: open the selected file
# ctrl-n: open new file with QUERY_STRING.txt

# config
NV_DIR=YOUR_NV_DIR
EDITOR=nvim
# FUZZY can be 'fzf' or 'sk'
FUZZY=fzf

cd "$HOME/$NV_DIR" || exit

# The command to generate the list of candidates.
# It combines results from a filename search and a content search.
candidates_cmd="(rg --files | $FUZZY --filter \"{}\" & rg -S -l \"{}\") | uniq"

sk \
    --ansi \
    -i \
    -c "$candidates_cmd" \
    --bind "enter:execute($EDITOR {}),ctrl-n:execute($EDITOR {cq}.txt)" \
    --preview "$HOME/.vim/plugged/fzf.vim/bin/preview.sh {}" \
    --preview-window down:wrap
