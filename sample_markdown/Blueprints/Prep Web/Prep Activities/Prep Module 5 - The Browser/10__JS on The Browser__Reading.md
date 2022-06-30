---
uuid: e1fd074e-16d1-481f-8cf9-7e17044a5516
duration: 30
---

In this section, our goal is to understand how we can write and test front-end JavaScript code like we did with Node in the terminal. We will also look into some of the methods that are available in JavaScript when running in the browser.


## Introduction

By now we have discussed the basics of JavaScript and are familiar with some of the basic concepts such as:


- Variables
- Functions & Code Reuse
- Loops & Arrays
- Conditional Execution
- Objects


When we discuss using JavaScript on the front-end (inside a browser), all of the concepts above still apply. As a matter of fact, all the concepts above were available for JavaScript on the front-end (in browsers) first before becoming available in Node on the back-end (in your terminal).

## So what's the "DOM"?

When a page is loaded for users to see, the browser is running a process that creates a __Document Object Model__ (or DOM) in memory to represent all of the HTML code on that page. Each HTML element is also called a "Node" or "DOM Node", not to be confused with NodeJS.

This transformation of HTML text into a complete object structure is an important one. One reason why the browser does this is to allow JavaScript code to manipulate what the user sees on the screen by providing a way to interact with this data.

The availability of the DOM allows JavaScript to do the following on the web page:

- __Add / remove / change any HTML element (tag) or property of an element (attribute).__

    For example: consider a web page that shows you an overlay box (popup box) but only when you click a particular button. What is happening there is that there is JavaScript code that is notified and runs when a click has been made, then adds the popup content to the DOM which in turn tells the browser to show it on the page.

- __Change the CSS styles of the page.__

- __Add / react to DOM events on the page.__

    DOM Events provide a way for a web page's DOM to notify your JavaScript code that an interesting action or occurrence has taken place, such as a click or a key press. Events are usually tied to a specific element or set of elements of the DOM. A developer can take advantage of DOM events to run certain functions whenever they take place.

    For example, when an HTML element is clicked, the DOM 'broadcasts' a `click` event. This broadcast tells the the web page that this specific element was clicked. A developer can write code that waits and 'listens' for that element to broadcast a `click` event, then run a function when it receives that broadcast. 

    We will dive deeper into the steps involved to achieve this, but until then, we can consider JavaScript a language that reacts to certain triggers. A `click` event is a trigger. The function that is then run to react to that trigger is "The Listener" or "The Handler".


## Working with the DOM

In the **DOM**, all HTML elements are **defined as objects**.

A **property** is a value that you can get or set (like changing the content of an HTML element).

A **method** is an action you can do (like add or deleting an HTML element).


## Changing HTML code with JavaScript

In most web development projects, you will use the DOM to do one of the following things:

* Find an HTML Element

  - For example, you have 3 lists of people on the page and you want to select the second list to start making changes to it. You'd have to target and locate that element in the DOM first.

* Change an HTML Element

  - Let's say you'd like to change an empty paragraph into one that says "Hello World." To achieve this, you must first select the HTML element, then set the `innerHTML` property of that element to the new text.

* Adding and Deleting HTML Elements

 - For example, adding a new person to a list on the page.


## Further Reading

### [More on working with the DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)

<https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction>

### [Finding DOM elements](http://www.w3schools.com/js/js_htmldom_document.asp)

<http://www.w3schools.com/js/js_htmldom_document.asp>

### [Creating HTML code with JavaScript - Example](http://www.w3schools.com/js/tryit.asp?filename=tryjs_dom_method)

<http://www.w3schools.com/js/tryit.asp?filename=tryjs_dom_method>


In the next few sections, we'll do a deeper dive into the methods and properties that the DOM makes available to us such that we can do the DOM manipulation mentioned above.
