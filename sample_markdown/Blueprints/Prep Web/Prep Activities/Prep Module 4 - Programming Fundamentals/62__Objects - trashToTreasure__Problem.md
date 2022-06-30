---
uuid: 69623a30-962a-403f-a67c-1bdab68c55b8
name: 'Objects - Trash to Treasure'
type: 'Assignment'
duration: 60
milestone: true
bg_image_url: https://d.pr/i/wThdjg+
bg_image_darkness: 0.6,0.0
outcomes:
evaluates_code: true
initial_code: |
  const smartGarbage = function (trash, bins) {
    // Your code in here ...
  }

test_code: |
  describe("smartGarbage", function() {
    it("increases the appropriate property", function() {
      const trash = 'recycling'
      const bins = {
        waste: 10,
        recycling: 10,
        compost: 10
      }
      const result = smartGarbage(trash, bins)
      expect(result.recycling).to.be.equal(11);
    });
    it("does not alter the wrong properties", function() {
      const trash = 'recycling'
      const bins = {
        waste: 9,
        recycling: 8,
        compost: 3
      }
      const result = smartGarbage(trash, bins)
      expect(result.waste).to.be.equal(9);
      expect(result.compost).to.be.equal(3);
    });
  });
---

Welcome back to Codeville, where you are now the mayor! The people of Codeville want you to focus on Smart City upgrades. You've decided to begin by replacing all of the city's trash cans with smart cans: when citizens toss their rubbish into the smart can, it automatically sorts items into waste, recycling, and compost bins.

We need to complete a function called `smartGarbage(trash, bins)`, which will be responsible for increasing the garbage count for waste, recycling, or compost depending on what trash is submitted.

## Challenge

> #### Instruction
> Complete the logic in the function `smartGarbage`. 

Our function will receive two arguments: 

1. The first argument, `trash`, is a string that will tell our function what type of item is being submitted. 
2. The second argument, `bins`, is an object containing three properties (waste, recycling, and compost), which hold some numerical value. Our function must increase the correct value in the `bins` object, and then return the newly updated object.

<aside>
<h3>Objects in JavaScript</h3>
<p>We will need to access the proper value in the bins object using the `trash` as the key. If you're having trouble with this, take a look online to see how to use <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors" target="_blank">square bracket notation</a> to access values in a JavaScript object.
</p>
<p>Note: When we’re referencing a variable in the bracket notation, we can skip the quotes.</p>
</aside>

For example, say we called the function with the following arguments.

```javascript
smartGarbage('recycling', { waste: 4, recycling: 2, compost: 5 });
```

The `smartGarbage` function should return the object:

```js
{
  waste: 4,
  recycling: 3,
  compost: 5
}
```

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
