---
uuid: 418ef44e-24de-424b-8c2c-473a8047d738
duration: 120
stretch: true
allow_submissions: true
tags: focal-adv
outcomes:
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
  - a47c2d15-1a32-4f97-9574-dd37e1c5781b
  - 6b7b5008-3830-47c6-ade6-552623cbd636
  - 0b0999a8-a16a-48c4-bb50-c9433ab95bc5
  - ad2ef026-74ca-4bae-8d7e-3e8a3d2a50b2
  - 68766b84-eb9a-44ab-87a9-29207ec8f60e
  - a8582b46-f168-4eb8-8227-571cab249e5f
  - 8599cc9a-82f8-4d7f-850f-0b804d5735bd
  - 5f66ee62-ea91-4697-917e-4abb014554d9
---


In this activity we're going to practice more looping by solving a string manipulation problem.

## Problem

Write a program that takes any number of command line arguments, converts each to pig latin (the rules are in the next paragraph), then puts the translated words together into one sentence logged to the console.

The true [pig latin rules](https://en.wikipedia.org/wiki/Pig_Latin#Rules) would be a bit difficult to implement, so let's simplify them. Convert a word to pig latin by taking its first letter, moving it to the end of the word, then adding `"ay"` after it all.

If the final program were called `pig-latin.js`, then the following Terminal commands show several example outputs.

```terminal
node pig-latin.js pig latin
igpay atinlay
```

```terminal
node pig-latin.js this is all just gibberish
histay siay llaay ustjay ibberishgay
```

> #### Instruction
> Submit your solution as a gist.

