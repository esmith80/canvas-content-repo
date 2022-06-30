---
uuid: 31123d1c-4c91-4100-9a8b-7aee4764652e
name: 'X Marks the Perfect Shot 📸'
type: 'Assignment'
milestone: true
bg_image_url: https://d.pr/i/wThdjg+
bg_image_darkness: 0.6,0.0
outcomes:
evaluates_code: true
duration: 30
initial_code: |
  const finalPosition = function (moves) {
    // Your code in here ...
  }

test_code: |
  describe("finalPosition", function() {
    it("returns an array with two elements", function() {
      const moves = [
        'north',
        'north',
        'west',
        'west',
        'north',
        'east',
        'north'
      ]
      
      const result = finalPosition(moves)
      expect(result).to.be.an('array').with.length;
      expect(result).to.have.lengthOf(2);
    });

    it("returns the proper X value", function() {
      let moves = [
        'north',
        'north',
        'west',
        'west',
        'north',
        'east',
        'north'
      ]
      
      let result = finalPosition(moves)
      expect(result[0]).to.equal(-1);

      moves = [
        'east',
        'east',
        'east',
        'east',
        'west',
        'west',
        'south'
      ]
      
      result = finalPosition(moves)
      expect(result[0]).to.equal(2);
    });

    it("returns the proper Y value", function() {
      let moves = [
        'north',
        'north',
        'west',
        'west',
        'north',
        'east',
        'north'
      ]
      
      let result = finalPosition(moves)
      expect(result[1]).to.equal(4);

      moves = [
        'south',
        'south',
        'south',
        'south',
        'south',
        'north',
        'south'
      ]
      
      result = finalPosition(moves)
      expect(result[1]).to.equal(-5);
    });
  });
---

> #### Danger
> In this challenge you'll be using a built-in code-runner. Your code will be evaluated for both style _and_ correctness. If you're using VS Code to write your code, you'll want to ensure that you have VS Code set up with proper tab sizing as outlined in the [Customizing VS Code](/67e8543a-0bc0-4b64-a311-b349497c2fb0) activity. Otherwise, the code-runner will report issues with the spacing in your code.

Congratulations, you've been elected as the Mayor of Codeville! Codeville's biggest event of the year, the Harvest Festival, will be coming up soon! Each year, the Harvest Festival kicks off with a parade - and you want to make sure this is a show the townspeople will remember forever.

You've hired Daria Ducksworth, the town's best photographer, to capture the magic of the Harvest Festival Parade. She needs to track the coordinates of the floats to help her capture their best angles.

## Challenge

> #### Instruction
> Complete the logic in the function `finalPosition`. 

For this challenge you'll have to implement a function called `finalPosition(moves)`, which will calculate the position of the parade based on an array of directional moves. The parade will move on an X-Y grid like the following.

![X Y coordinate grid](https://etc.usf.edu/clipart/49200/49288/49288_graph_0505b_md.gif)

Your function will receive an array of moves, which are strings that say either `north`, `south`, `west`, or `east`, these represent the parade moving in a particular direction by a single space on the grid. By looking at the path that the parade moves in, your function should calculate and then return an array representing the position of the parade after completing all of the moves. The first element of the array should be the X position, and the second element of the array should be the Y position. The parade begins at `[0,0]`. 

If we called the function with the following arguments.

```javascript
const moves = ['north', 'north', 'west', 'west', 'north', 'east','north']  

finalPosition(moves);
```

The `finalPosition` function should return the array:

```js
[-1, 4]
```

> #### Instruction
> Submit your code

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
