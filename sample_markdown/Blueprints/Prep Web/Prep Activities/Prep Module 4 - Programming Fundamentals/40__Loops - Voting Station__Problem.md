---
uuid: 4b0c5488-9664-4751-84ff-61e94c269f55
name: 'Voting Station Calculation'
type: 'Assignment'
milestone: true
bg_image_url: https://d.pr/i/wThdjg+
bg_image_darkness: 0.6,0.0
outcomes:
evaluates_code: true
duration: 30
initial_code: |
  const chooseStations = function (stations) {
    // Your code in here ...
  }

test_code: |
  describe("chooseStations", function() {
    it("returns an array", function() {
      const stations = [
        ['Big Bear Donair', 10, 'restaurant'],
        ['Bright Lights Elementary', 50, 'school'],
        ['Moose Mountain Community Centre', 45, 'community centre']
      ]

      const result = chooseStations(stations)
      expect(result).to.be.an('array');
    });

    it("returns an array of strings", function() {
      const stations = [
        ['Big Bear Donair', 10, 'restaurant'],
        ['Bright Lights Elementary', 50, 'school'],
        ['Moose Mountain Community Centre', 45, 'community centre']
      ]

      const result = chooseStations(stations)

      expect(result[0]).to.be.a('string');
      expect(result[1]).to.be.a('string');
    });

    it("returns only the appropriate stations", function() {
      let stations = [
        ['Big Bear Donair', 10, 'restaurant'],
        ['Bright Lights Elementary', 50, 'school'],
        ['Moose Mountain Community Centre', 10, 'community centre']
      ]

      expect(chooseStations(stations)).to.deep.equal(["Bright Lights Elementary"]);
      
      stations = [
        ['A', 10, 'school'],
        ['B', 9, 'restaurant'],
        ['C', 21, 'community centre'],
        ['D', 15, 'school'],
        ['E', 50, 'restaurant'],
        ['F', 20, 'school'],
        ['G', 40, 'community centre'],
        ['H', 50, 'school'],
      ]

      expect(chooseStations(stations)).to.deep.equal(["C", "F", "G", "H"]);
    });
  });
---

> #### Danger
> In this challenge you'll be using a built-in code-runner. Your code will be evaluated for both style _and_ correctness. If you're using VS Code to write your code, you'll want to ensure that you have VS Code set up with proper tab sizing as outlined in the [Customizing VS Code](/67e8543a-0bc0-4b64-a311-b349497c2fb0) activity. Otherwise, the code-runner will report issues with the spacing in your code.

Welcome to Codeville, a small but thriving town in Serverside, Canada. The town election is coming up, and citizens are excited to get to voting! The dutiful City of Codeville staff has finalized most of the details, except for one thing: where will citizens vote?

There are hundreds of buildings in town, but there are very specific requirements for what constitutes an acceptable voting station. With very little time to decide, the city needs our help to sort through the building data.

We'll write a `chooseStations(stations)` function that takes in an array of possible voting stations, and then only returns the names of the stations that are appropriate.

## Challenge

> #### Instruction
> Complete the logic in the function `chooseStations`. 

Your function will receive an array of stations, where each station itself is an array with a name, a capacity, and a venue type.

In order for a station to be deemed appropriate, it must have a **capacity of at least 20**, and be a **school** or **community centre**.

> #### Note
> One way we could solve this is by initializing a new array within our function (`let goodStations = []`) and [push](https://www.w3schools.com/jsref/jsref_push.asp) the stations that meet the requirements to it as we loop through them. See two of the Lighthouse Labs team pair program this challenge below.
> <div></div>
> <iframe width="560" height="315" src="https://www.youtube.com/embed/16UXovpvyf8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

If we called the function with the following arguments.

```javascript
const stations = [
  ['Big Bear Donair', 10, 'restaurant'],
  ['Bright Lights Elementary', 50, 'school'],
  ['Moose Mountain Community Centre', 45, 'community centre']
];

chooseStations(stations);
```

The `chooseStations` function should return the array:

```js
['Bright Lights Elementary', 'Moose Mountain Community Centre']
```

> #### Instruction
> Submit your code

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
