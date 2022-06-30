---
uuid: 8ec36516-7144-4d4e-9aa5-2d1afb00e95c
duration: 30
---

In this activity we will cover "events" in the browser in terms of:

- Why they exist
- What they are used for
- How to leverage them
- The variety and flexibility they offer
- How they relate to the DOM

### DOM Events

One of the biggest advantages that JavaScript provides, as you may have noticed by now, is the ability to interact with the user by adding, changing and removing elements from the page.

And as we have previously mentioned, JavaScript is a language that mostly reacts to triggers. These triggers are often caused by one of many different user actions:

- When a user clicks something: `onclick` event
- When a user hovers over something: `onmouseover` event
- When a user changes a form (input) field: `onchange` event

There are many others. You can read up on events in more detail in [this article](http://www.w3schools.com/js/js_htmldom_events.asp) if you wish.

DOM events are triggered by interactions such as clicking, scrolling, dragging and others, and are often (but not always) triggered by the user. We can tell the browser to notify us when such events happen.

### Reacting to Clicks

Let's say we have an HTML button.

```html
<button id="my-button">
  Click Me!
</button>
```

In order to trigger a reaction when this button is clicked, we add an attribute called `onclick` as follows.

```html
<button id="my-button" onclick="alert('Clicked!!')">
  Click Me!
</button>
```

The HTML code above will render a button on the page. Once this button is clicked, you'll get an alert saying **"Clicked!!"**.

Notice that in this case, we're writing JavaScript code inside of the `onclick` attribute value in our HTML code. `alert` is a built-in function that comes with every browser and therefore we do not have to define it ourselves.

### Reacting to Clicks Sandbox

**[Try It Here](https://jsfiddle.net/b36y977w/1/)**

### Reacting to `onclick` with Custom Functions

Let's do the same example as above, but this time we will define a custom function instead of `alert`.

We'll define a function called `buttonClicked(selector)` which receives an element _selector_ string.

```javascript
const buttonClicked = function(selector) {
  alert('The ' + selector + ' button has been clicked.');
}
```

Notice that all we're doing here is calling the `alert` ourselves via our custom defined function.

Now let's make the necessary HTML changes since our button element has to reflect the changes we've assumed in our JavaScript. Instead of calling `alert` directly inside the `onclick` attribute, we will call our function instead and pass it the selector string.

```html
<button id="my-button" onclick="buttonClicked('#my-button')">
  Click Me!
</button>
```

### Custom Click Functions Sandbox

**[Try It Here](https://jsfiddle.net/h4897s2L/2/)**

## Further Reading

### [Other DOM Events](http://www.w3schools.com/js/js_htmldom_events.asp)

<http://www.w3schools.com/js/js_htmldom_events.asp>

### [Javascript Event Listeners](http://www.w3schools.com/js/js_htmldom_eventlistener.asp)

<http://www.w3schools.com/js/js_htmldom_eventlistener.asp>
