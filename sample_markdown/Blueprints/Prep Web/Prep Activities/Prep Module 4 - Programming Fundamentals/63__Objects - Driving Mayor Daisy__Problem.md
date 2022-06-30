---
uuid: d54f577f-20ef-4172-af2e-934db0314511
name: 'Objects - Driving Mayor Daisy'
type: 'Assignment'
duration: 60
milestone: true
bg_image_url: https://d.pr/i/wThdjg+
bg_image_darkness: 0.6,0.0
outcomes:
evaluates_code: true
initial_code: |
  const carPassing = function (cars, speed) {
    // Your code in here ...
  }

test_code: |
  describe("carPassing", function() {
    it("returns an array", function() {
      const cars = [
        {
          time: 1568329654807,
          speed: 40,
        },
        {
          time: 1568329821632,
          speed: 42,
        },
        {
          time: 1568331115463,
          speed: 35
        }
      ];

      const speed = 38;
      const result = carPassing(cars, speed);

      expect(result).to.be.an('array');
    });
    
    it("returns an array with one new element", function() {
      const cars = [
        {
          time: 1568329654807,
          speed: 40,
        },
        {
          time: 1568329821632,
          speed: 42,
        },
        {
          time: 1568331115463,
          speed: 35
        }
      ];

      const speed = 38;
      const result = carPassing(cars, speed);

      expect(result.length).to.be.equal(4);
    });

    it("has the most recent datestamp for the newest item", function() {
      const cars = [
        {
          time: 1568329654807,
          speed: 40,
        },
        {
          time: 1568329821632,
          speed: 42,
        },
        {
          time: 1568331115463,
          speed: 35
        }
      ]

      const length = cars.length

      const speed = 38
      const result = carPassing(cars, speed)

      expect(result[3].time).to.be.above(result[2].time);
    });    
  });
---

As Mayor of Codeville, you want one of your legacies to be bettering street design enough to improve traffic flow and reduce congestion. You've decided to start by installing special sensors on some streets to monitor how often cars pass by, and track their speeds.

## Challenge

> #### Instruction
> Complete the logic in the function `carPassing`. 

The function, `carPassing(cars, speed)`, takes in an array of car objects, and the speed of a car as it passes the sensor. 

This function should create a new object with a property called speed, and another property called time and add it to the cars array. We can retrieve the current time, for setting the `time` property, by using the `Date.now()` function, which is built into JavaScript!

Our function should return an array that includes all of the elements in `cars` as well as our new element.  

> #### Note
> We may need to use JavaScript's handy `push()` method to add our new object to the cars array. Take a look at [this previous exercise](/b21257a6-aa67-4c32-8cc1-feb731a77f20) for a refresher.

If we called the function with the following arguments.

```javascript
const cars = [
  {
    time: 1568329654807,
    speed: 40,
  },
  {
    time: 1568329821632,
    speed: 42,
  },
  {
    time: 1568331115463,
    speed: 35
  }
]

const speed = 38

carPassing(cars, speed)
```

The `carPassing` function might return the array:

```js
[
  {
    time: 1568329654807,
    speed: 40,
  },
  {
    time: 1568329821632,
    speed: 42,
  },
  {
    time: 1568331115463,
    speed: 35
  },
  {
    time: 1568431216417,
    speed: 38
  }
]
```

> #### Instruction
> Submit your code.

When you click Evaluate, we will run automatic test code to call and verify your functions. Evaluate as many times as you need, until you are able to successfully submit this problem.
