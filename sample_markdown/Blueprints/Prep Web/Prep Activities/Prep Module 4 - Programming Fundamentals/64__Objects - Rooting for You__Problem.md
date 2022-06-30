---
uuid: 606cfe41-e07e-49c4-beb6-f77be68ae3f0
name: "Objects - We're Rooting For You!"
type: 'Assignment'
duration: 60
milestone: true
bg_image_url: https://d.pr/i/wThdjg+
bg_image_darkness: 0.6,0.0
outcomes:
evaluates_code: true
initial_code: |
  const judgeVegetable = function (vegetables, metric) {
    // Your code in here ...
  }

test_code: |
  describe("judgeVegetable", function() {
    it("returns a string", function() {
      const vegetables = [
        {
          submitter: 'Old Man Franklin',
          redness: 10,
          plumpness: 5
        },
        {
          submitter: 'Sally Tomato-Grower',
          redness: 2,
          plumpness: 8
        },
        {
          submitter: 'Hamid Hamidson',
          redness: 4,
          plumpness: 3
        }
      ]

      const metric = 'redness'

      const result = judgeVegetable(vegetables, metric)

      expect(result).to.be.a('string');
    });
    
    it("returns the name of the submitter of the highest rated veggie", function() {
      let vegetables = [
        {
          submitter: 'Old Man Franklin',
          redness: 10,
          plumpness: 5
        },
        {
          submitter: 'Sally Tomato-Grower',
          redness: 2,
          plumpness: 8
        },
        {
          submitter: 'Hamid Hamidson',
          redness: 4,
          plumpness: 3
        }
      ]

      let metric = 'redness'

      let result = judgeVegetable(vegetables, metric)
      expect(result).to.equal('Old Man Franklin')

      vegetables = [
        {
          submitter: 'A',
          d: 5,
        },
        {
          submitter: 'B',
          d: 10,
        },
        {
          submitter: 'C',
          d: 25,
        }
      ]

      metric = 'd'

      result = judgeVegetable(vegetables, metric)
      expect(result).to.equal('C')
    });
  });
---

At this year's town festival the Codeville Vegetation Association will be handing out several awards for the best vegetables in a given category. We'll be testing out a new judging system on the best tomatoes to start, which can be judged based on their redness OR their plumpness.

## Challenge

> #### Instruction
> Complete the logic in the function `judgeVegetable`. 

For this challenge, we'll need to implement a function called `judgeVegetable()`that will decide which vegetable is best based on a given judging characteristic. Our function will receive two parameters: a list of veggies(as an array of objects), and a characteristic to judge the veggies by (in the case of a tomato, either redness or plumpness).

Our function must return the name of the person who submitted (`vegetables.submitter`) the vegetable with the highest ranking in the provided category.

If we called the function with the following arguments.

```javascript
const vegetables = [
  {
    submitter: 'Old Man Franklin',
    redness: 10,
    plumpness: 5
  },
  {
    submitter: 'Sally Tomato-Grower',
    redness: 2,
    plumpness: 8
  },
  {
    submitter: 'Hamid Hamidson',
    redness: 4,
    plumpness: 3
  }
]

const metric = 'redness'

judgeVegetable(vegetables, metric)
```

The `judgeVegetable` function would return the string:

```js
"Old Man Franklin"
```

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
