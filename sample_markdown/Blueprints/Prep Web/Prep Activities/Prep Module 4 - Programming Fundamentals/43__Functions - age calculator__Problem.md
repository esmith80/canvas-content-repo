---
uuid: d908fff2-95da-4727-b90f-2819d86b8b6d
name: 'Functions - Age calculator'
type: 'Assignment'
duration: 60
milestone: true
outcomes:
  - e3abe961-dc46-4246-873a-e63675e378ab
  - c665cbb9-b722-4a95-b3d3-90e8935250a2
  - df38dce5-d442-4ecb-af39-75536907ad00
  - a47c2d15-1a32-4f97-9574-dd37e1c5781b
evaluates_code: true
test_code: |
  describe("ageCalculator", function() {
    it("exists as a function", function() {
      expect(ageCalculator).to.be.function;
    });
    it("reports Suzie as 32 years old", function() {
      expect(ageCalculator("Suzie", 1984, 2016)).to.be.equal('Suzie is 32 years old.')
    });
    it("reports Jack as 12 years old", function() {
      expect(ageCalculator("Jack", 2004, 2016)).to.be.equal('Jack is 12 years old.')
    });
    it("reports Ali as 0 years old", function() {
      expect(ageCalculator("Ali", 2016, 2016)).to.be.equal('Ali is 0 years old.')
    });
  });
---

We've been given access to a database that contains all of the users for the `PlentyOfDevs` dating site. This database contains every user's date of birth, but users have complained about having to figure out someone's age using just their date of birth. In this challenge, we will write a function that determines someone's age, given their date of birth.  

## Challenge

> #### Instruction
> Create a function to determine someone's age.

Define a function called `ageCalculator`. This function should take 3 parameters:

- `name` – a string representing someone's name
- `yearOfBirth` – a number representing their year of birth
- `currentYear` – a number representing the current year

The `ageCalculator` function should return a string explaining how old the person is. For example, if we called `ageCalculator("Suzie", 1983, 2015);`, the return value should be as follows.

<aside>
  <h3><code>return != console.log</code></h3>
  <p>
    <code>console.log</code> is great for debugging and inspecting code by printing values to the terminal and is mostly used for this purpose. However, most functions are designed to <code>return</code> a computed value to the caller instead of printing it to the terminal.
  </p>
  <p>
    You should therefore <strong>carefully read for whether you need to return or log in your function</strong>.
  </p>
</aside>

```javascript
"Suzie is 32 years old."
```

## Tips

<!-- * Create a new  -->
* You may paste the following code after your function definition to help you verify it works correctly.

```javascript
console.log(ageCalculator("Miranda", 1983, 2015));
console.log(ageCalculator("Ferdinand", 1988, 2015));
```

> #### Warning
> **Do not work on your solution in the code editor provided on this page.**

<div></div>

> #### Instruction
> Submit your code.

When you click **Evaluate**, we will run automatic test code to call and verify your function. Evaluate as many times as you need, until you are able to successfully submit this problem.
