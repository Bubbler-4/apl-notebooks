#!/bin/bash
pygments_apl_lexer=~/.pyenv/versions/3.8.3/lib/python3.8/site-packages/pygments/lexers/apl.py
sed -i -e 's/∘]/∘⌸\&⌶@⌺⍥⍛⍢]/' $pygments_apl_lexer
sed -i -e 's/↗]/↗⊆⊇⍸√⌾…⍮]/' $pygments_apl_lexer
find . \( ! -path '*/.*' \) -name *.ipynb | while read filename; do
    jupyter nbconvert $filename --output-dir $(echo $(dirname $filename) | sed "s/^..notebooks/.\/html/") && \
    sed -i -e 's/"custom\.css"/"\/apl-notebooks\/html\/custom.css"/' $(echo $filename | sed "s/^..notebooks/.\/html/" | sed "s/ipynb$/html/")
    done
