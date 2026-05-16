
# YET IN PRE-ALPHA

## karpos.nvim: a logical and simple nvim theme using terminal colors

**"Therefore by their fruits ye shall know them" - Matthew 7:15 ASV**

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

* black (naping): take it out and the file still works (comments, etc).
* red (ALARMING): not used in syntax to preserve the power of the meaning.
* green (working): mutate state, write (function/method calls, etc).
* yellow (guiding): does flow control (like `if`, `for`, `break`, `await`, etc).
* blue (assigning): define abstractions (function/method/variable definitions, type/class assignments, etc).
* magenta (emoting): data signaling exceptional states and symbols (escape character, boolean, `nil`, not-a-letter-not-a-number, etc).
* cyan (linking): passively act as placeholders (calling variable, links, file paths, etc).
* white (saying): literal data (strings, literal numbers, etc).

## neovim ui

0. ground: background.
1. red: critical.
3. green: positive.
4. magenta: you-are-here.
5. black: whatever.

## what this achieve

1. no rainbow salad: monochrome is bad, panchrome is also bad, karpos.nvim stick to 8 ansi slots and a background.
2. you can just swap it for your own 8 terminal colors.
3. the semantic power of red is preserved by not puting it into syntax highlight
