# tea2y.nvim: a logical and simple nvim theme using terminal colors

- ground: `#1E1E0F`
- black: `#858577`
- red: `#FF5050`
- green: `#36DB36`
- yellow: `#CFCF2A`
- blue: `#7E7EFF`
- magenta:`#E742E7`
- cyan: `#38D5D5`
- white: `#D4D4B4`

## syntax highlight

- black: comments.
- red: negative; not used in syntax to preserve its power.
- green: execution; function/method calls.
- yellow: flow-control; conditionals and stops.
- blue: definition; set boundaries and abstractions, e.g. function/variable definitions, type assignments, structural punctuation.
- magenta: catch-all; if does not fall in other color it falls here.
- cyan: reference; passive placeholders, e.g. links, file paths, calling variables.
- white: strings, chars.

## neovim ui

- ground: background.
- red: negative.
- green: positive.
- magenta: you-are-here.
- black: whatever.

## what this achieves

- no rainbow salad: monochrome is bad, panchrome is also bad, base9.nvim stick to 8 ansi slots and a background.
- colors have simple meanings.
- the semantic power of red is preserved by not puting it into syntax highlight.
