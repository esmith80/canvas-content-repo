---
uuid: 09990eba-48d5-477b-99cc-6e1c09420c80
duration: 90
allow_submissions: true
stretch: true
tags: focal-adv
outcomes:
  - eb5c730b-5ef1-4e7a-8428-fa7f32f99f35
  - bd22917e-ab2d-419e-8606-f26112ac74af
  - ef017e9e-70e1-4a67-9c43-ee7dad369caa
  - 46bd3b64-e729-4363-b532-ce8b8af9ea93
  - 85afb2f8-283b-48e4-bef7-99756ddfe6a6
---

The goal of this exercise is to apply the concepts about JavaScript objects that we have learned thus far.

This includes iterating over arrays and objects, as well as accessing and manipulating object data.

## Setup

> #### Instruction
> Create a directory inside your `objects` directory, and `cd` into it.

```terminal
cd /vagrant/focal/objects
```

```terminal
mkdir sales_tax
```

```terminal
cd sales_tax
```

> #### Instruction
> Create a new JS file in there.

```terminal
touch sales.js
```

## Challenge

> #### Instruction
> Given the following data, implement a function `calculateSalesTax` that calculates the _total sales_ and _total tax_, grouped by company.

```javascript
const salesTaxRates = {
  AB: 0.05,
  BC: 0.12,
  SK: 0.10
};

const companySalesData = [
  {
    name: "Telus",
    province: "BC",
    sales: [ 100, 200, 400 ]
  },
  {
    name: "Bombardier",
    province: "AB",
    sales: [ 80, 20, 10, 100, 90, 500 ]
  },
  {
    name: "Telus",
    province: "SK",
    sales: [ 500, 100 ]
  }
];
```

The function should look like this:

```javascript
const calculateSalesTax = function(salesData, taxRates) {
  // Implement your code here
}
```

The results for the given example data above should yield the following results:

```
const results = calculateSalesTax(companySalesData, salesTaxRates);

/* Expected Results:
{
  Telus: {
    totalSales: 1300
    totalTaxes: 144
  },
  Bombardier: {
    totalSales: 800,
    totalTaxes: 40
  }
}
*/
```

### Hints

* Break down the problem into step-by-step pseudo-code (try pen and paper sketching, thinking "top-down" vs "bottom-up", pairing--whatever feels right to you!), and use `console.log` statements to debug and check your assumptions.

* Don't be afraid to write additional functions if it helps you reason about your code! Sometimes even a very simple function like `calculateTax(sales, taxRate)` (calculating tax on a single dollar amount with a known rate) can help by giving the operation a name. What other small operations would partially solve this problem?

* Naming your variables clearly and descriptively will help avoid confusion.

* If you try to access an object attribute (property) that does not exist, then it will return `undefined`. This is important to know - if you are encountering `undefined` issues you may be falsely assuming that an attribute exists. Remember `undefined` is a "falsey" value.

## Complete Assignment

> #### Instruction
> Create a new Secret Gist with your code.

<div></div>

> #### Instruction
> Submit the URL to your new gist when marking this activity as completed.
