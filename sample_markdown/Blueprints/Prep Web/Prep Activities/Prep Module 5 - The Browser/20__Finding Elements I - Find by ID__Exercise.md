---
uuid: 43016b0c-796f-43b4-a29c-9fc0a2465adc
duration: 20
---

In this activity, we will learn how to access the **Document Object Model** (DOM) in JavaScript as well as how to use the `getElementById` DOM method.

## Accessing the DOM

When we want to access the **Document Object Model** in JavaScript, we simply use JavaScript object `document`. 

```javascript
document.getElementById('identifier');
document.getElementsByTagName('p');
document.getElementsByClassName('class-name');
```

The three methods in the example above are built-in methods of the `document` object that allow us to find elements in the DOM! 

You can use JavaScript to find DOM elements in more than one way, and there are indeed situations that call for one method over the other.

## Finding Elements in the DOM

Let's look into each of the ways that we can find / search DOM elements.

### HTML Attributes

Before we get into how to find elements in the DOM, we need to understand `attributes`.

Attributes are a lot like variables in the sense that they store data to be used later. 

Here is a simple example.

```html
<p id="this-element-is-unique"></p>
```

In the above example, we have assigned the string "this-element-is-unique" to an HTML 'paragraph' tag's `id` attribute.

Every HTML element has a large number of possible attributes that can help a developer identify, style, and manipulate it.

### Finding an element by its ID

**When you want to find a unique element on your page.**

Say we want to find a specific and unique element on our page. If the element is as specific and unique as we say, then it may have an `id` attribute.

The `id` attribute stores a string that is used to uniquely identify an element. The value of the `id` attribute should be unique to the entire page. No other element on the page should have the same `id`.

```html
<p id="this-element-is-unique"></p>
```

To find an element by its `id` attribute, we can use the `document.getElementById` method. However, in order for this method to work, the `id` attribute must already be set.

```javascript
document.getElementById('this-element-is-unique');
```

### Find Elements by ID Exercise

> In the exercise below, use the `document.getElementById` method to select the element with the `id` attribute of `info`. Then access the text inside the element and display it with the `alert` method.
>
> Fork this **[coding exercise on JSfiddle](https://jsfiddle.net/fradaokp/)** and complete it to get through this section.
