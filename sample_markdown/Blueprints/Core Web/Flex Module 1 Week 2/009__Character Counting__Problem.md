---
uuid: 9806491e-20f7-49b6-8541-d7268d03504a
duration: 60
name: "Implement countLetters in Lotide"
section: 9ce11024-9346-45bb-8dbc-c1e6f562ef4f
outcomes:
  - 5c13998e-43bc-4590-ba30-1ca1d6118cb4
  - 3abe17e9-41c9-485a-bcad-39f49ed86a8a
  - eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
  - cc0a652f-acdf-4c4c-9d3b-d4a86542bd9b
---

In this activity, we will create another Lotide function. This one will be like the [`countOnly`](/198ae70c-db55-467c-9b47-783d4f5cc7bd) function from the previous activity. But for this activity, there will be fewer instructions.

## Setup

> #### Instruction 
> Create `countLetters.js` in your lotide project folder.

```shell
cd /vagrant/lotide
```

```shell
touch countLetters.js
```

> #### Instruction 
> Copy your `assertEqual` function into this new file.

It would be nice to make use of our handy `assertEqual` function. Copy it from its source file and paste it in to the top of `countLetters.js`. <small>In the future we will learn a better approach to sharing functions between different files, but until then this copy/paste approach will have to do.</small>

## Challenge

> #### Instruction
> Create a function called `countLetters`.

The function should take in a sentence (as a string) and then return a count of each of the letters in that sentence. 

For example, `countLetters('LHL')` should return results indicating that `L` appears twice, and `H` once. 

Before implementing this function, we need to think about how it will report back these counts. It's not that we want to know _how many H's are in this sentence?_, because that would just be a number. We need it report back _multiple_ numbers.

> #### Question
> What should the returned value of `countLetters` look like?

????countletters-return-object
Perhaps this function could return an object where each unique character encountered in the string is a property of the object and the value for that property/key should be the number of occurrences for that character.

Therefore `countLetters("lighthouse in the house")` would return:

```javascript
{
  l: 1,
  i: 2,
  g: 1,
  h: 4,
  t: 2,
  o: 2,
  u: 2,
  s: 2,
  e: 3,
  n: 1,
}
```

Remember that we can skip and not count spaces, as seen here.
????

### Tips

You can use [`for...of`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of#Iterating_over_a_String) loops with strings.

## Complete Assignment

Once you've implemented the function and are satisfied with your manual verification of it, you can push your work and mark this activity as completed.

> #### Instruction 
> Commit and push the new file within your git repository.
