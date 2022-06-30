---
uuid: 002b194d-4037-41b7-a561-8ba1ec15b37a
name: 'Arrays - Ice cream!'
type: 'Assignment'
duration: 60
milestone: true
outcomes:
  - ad2ef026-74ca-4bae-8d7e-3e8a3d2a50b2
  - 5128eee5-370e-494c-805a-e17500ba8032
  - 95c727ba-833d-4fcd-a2f3-3a445a733e18
  - 091e4cdd-3216-45cf-993e-18cb957691cd
  - c0029c2f-6ae8-4f89-a12a-fb4344af4816
evaluates_code: true
initial_code: |
  // Do not modify these first two lines
  let iceCreamFlavours = ["chocolate", "vanilla", "cookies and cream", "rocky road", "strawberry"];
  console.log(iceCreamFlavours);

  // Your code below here...
test_code: |
  describe("The first console.log", function() {
    it("should be logging the original flavours", function() {
      let log = console.backlog[0];
      assert(Array.isArray(log), "No initial console.log found! Did you remove or modify line 3?");

      assert(log[1] === 'log', "Initial console statement is not a log, did you remove or modify line 3?");
      assert.deepEqual(log[2], ["chocolate", "vanilla", "cookies and cream", "rocky road", "strawberry"], "Original 5 flavours not found");
    });

  });

  describe("Step 1", function() {
    it("should be logging the original flavours along with root beer", function() {
      log = console.backlog[1];
      assert(Array.isArray(log), "No console.log found for step 1");

      assert(log[1] === 'log', "No console.log found for step 1");
      assert.deepEqual(log[2], ["chocolate", "vanilla", "cookies and cream", "rocky road", "strawberry", "root beer"], "6 flavours not found");
    });
  });

  describe("Step 2", function() {
    it("should be logging the first flavour, ie chocolate", function() {
      log = console.backlog[2];
      assert(Array.isArray(log), "No console.log found for step 2");

      assert(log[1] === 'log', "No console.log found for step 2");
      assert.deepEqual(log[2], "chocolate", "Output of chocolate not found");
    });
  });

  describe("Step 3", function() {
    it("should be logging the last flavour, ie root beer", function() {
      log = console.backlog[3];
      assert(Array.isArray(log), "No console.log found for step 3");

      assert(log[1] === 'log', "No console.log found for step 3");
      assert.deepEqual(log[2], "root beer", "Output of original 5 flavours not found");
    });
  });

  describe("Step 4", function() {
    it("should be logging the number of items in the array", function() {
      log = console.backlog[4];
      assert(Array.isArray(log), "No console.log found for step 4");

      assert(log[1] === 'log', "No console.log found for step 4");
      assert.deepEqual(log[2], 6, "Output of number of flavours (items) in the array not found");
    });
  });
---

The freezer at Lighthouse Labs is overflowing with Ice Cream so we need to have an ice cream party for all the students so it can be eaten. But before we can do that, we need determine which flavours of ice cream we have, and we'll need to organize them for easy access.

## Array of Flavours

We'll start by creating an array of `iceCreamFlavours` with flavours we've seen so far, then we'll update the array and read from it as we need to.

> #### Instruction
> Create an array of `iceCreamFlavours`

* First, create a new file in your `lighthouse-js-fundamentals` directory in Vagrant called `ice-cream.js`.
* Then, paste the following code into the file.

```javascript
// Do not modify these first two lines
const iceCreamFlavours = ["chocolate", "vanilla", "cookies and cream", "rocky road", "strawberry"];
console.log(iceCreamFlavours);

// Your code below here...
```

## Add a Flavor

> #### Instruction
> Add the flavour "root beer" to the array without modifying the original array. Then `console.log` the value of the entire array.

After adding "root beer" to the array, remember to `console.log` the value of the entire array. This way you can view the output in the DevTools console. It also allows Compass to inspect the console and make sure you're doing it right :)

Use the _Evaluate_ button to make sure that particular test passes before moving on to the next step.

> #### Warning
> Keep in mind that the string "root beer" is in all lower case. The evaluator for this exercise is case sensitive, so any difference in case can cause the tests to fail.

#### Get the First Flavour

Someone wants the first flavour of ice cream. 

> #### Instruction
> `console.log` the first flavour in the array.

This should come out to be "chocolate". Index it from the array, do not _hard-code_ the value by just doing `console.log("chocolate")`.

Use the _Evaluate_ button to make sure that particular test passes, and that the previous step's test continues to pass as well, before moving on to the next step.

### Get the Last Flavour

Someone wants the last flavour of ice cream.

> #### Instruction
> `console.log` the last flavour in the array

This should come out to be "root beer". Index it from the array, do not _hard-code_ the value by just doing `console.log("root beer")`.

Use the _Evaluate_ button to make sure that particular test passes, and that the previous steps' tests continue to pass as well, before moving on to the next step.

### Total Number of Flavours

Someone wants to know how many options there are.

> #### Instruction
> `console.log` the resulting _number of flavours_ in the array

This should come out to be `6` at that point. Again, do it programatically by asking the array for its size, do not _hard-code_ the value by just doing `console.log(6)`.

Use the _Evaluate_ button and hopefully, you will have no remaining failures. And just like that, we're done with the ice cream.
