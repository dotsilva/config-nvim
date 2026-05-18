
# xterm.nvim: a logical and simple nvim theme using terminal colors

* ground: `#1E1E1E`
* black:  `#858585`
* red:    `#FF4949`
* green:  `#36DB36`
* yellow: `#CFCF2A`
* blue:   `#7E7EFF`
* magenta:`#E742E7`
* cyan:   `#38D5D5`
* white:  `#D4D4D4`

## syntax highlight

* black: comments; take it out and the file still works.
* red: important; not used in syntax to preserve its power.
* green: execution; function/method calls.
* yellow: flow-control; conditionals and stops, e.g. `if`, `for`, `break`, `await`.
* blue: definition; set boundaries and abstractions, e.g. function/variable definitions, type assignments, structural punctuation.
* magenta: catch-all; if does not fall in other color it falls here.
* cyan: reference; passive placeholders, e.g. links, file paths, calling variables.
* white: strings, chars.

## neovim ui

0. ground: background.
1. red: important.
2. green: positive.
3. magenta: you-are-here.
4. black: whatever.

## what this achieve

0. no rainbow salad: monochrome is bad, panchrome is also bad, karpos.nvim stick to 8 ansi slots and a background.
1. colors have simple meanings.
2. the semantic power of red is preserved by not puting it into syntax highlight.
3. you can just swap it for your own 8 terminal colors and background.
