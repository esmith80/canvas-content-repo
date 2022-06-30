---
uuid: 32c37411-d6bf-4a7f-b236-98b9cdbde7ea
duration: 15
tags: focal
---

We've spent some time using functions which take in callbacks. In this activity we will peel back the proverbial green curtain and better understand how these functions work, and what they're called.

## Higher-Order Functions

> #### Information
> Spoiler Alert: Functions that take in callbacks are referred to as **Higher Order Functions**.

Actually, we can define them more accurately. 

> #### Information
> Higher-Order functions are any functions which _operate_ on other functions.

This _includes_, but is not limited to, functions which take in functions (callbacks) as arguments.

This means that built-in functions such as `forEach`, `filter`, and others can be called _"Higher-Order Functions"_. 

Having functions available to us as values allows us to pass them around. In programming languages like JS which support this, we are able to create higher-order functions. This is a major part of **Functional Programming**. Functional Programming has various other aspects that we're not going to touch formally quite yet.

> #### Information
> _Higher-Order functions_ are a major aspect of _Functional Programming_. 

### Video Description

> #### Instruction
> Watch MPJ's Fun Fun Function video about Functional Programming and Higher-Order functions.

<iframe style="width: 100%; height: 500px;" src="https://www.youtube-nocookie.com/embed/BMUiFMZr7vk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> #### Warning
> This video is from 2015 and therefore still uses some "older" JS syntax. Specifically the use of `var` is not recommended by us today. Arrow functions would also have been nice here. That said, these things shouldn't distract us from the objectives of the video lesson.

## Conclusion

We further explored the idea of functions as values and gave a more official, cool sounding name (of "Higher-Order Functions") to functions that operate on functions.
