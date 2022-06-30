---
uuid: 78d144c3-bb62-43b3-8244-26e6cb7a6eb3
duration: 20
---

In this activity, we will learn how to access DOM elements by their __Class Name__ with the `getElementsByClassName` DOM method.

We will also take a look at the handy `querySelector` DOM method.

### Finding elements by their Class Name

**When you want to find a set of elements that use the have the same class attribute**

Like the `id` attribute, the `class` attribute acts as an identifier of an element. However, a `class` doesn't have to be unique to one element. Any element can share a class attribute with any other element.

```html
<p id="paragragh-one" class="blue"></p>
<p id="paragragh-two" class="blue"></p>
<p id="paragragh-tree" class="blue"></p>
<p id="paragragh-four" class="blue"></p>
```

An element can also have numerous classes separated by spaces.

```html
<p id="paragragh-one" class="blue large"></p>
<p id="paragragh-two" class="blue large"></p>
<p id="paragragh-tree" class="blue small"></p>
<p id="paragragh-four" class="blue small"></p>
```

Those classes can be used to find elements with JavaScript using the `document.getElementsByClassName` method.

```javascript
document.getElementsByClassName('blue');
document.getElementsByClassName('blue large');
```

Like the `document.getElementsByTagName` method, `document.getElementsByClassName` returns an `Array` of DOM Objects.

### Find Elements by Class Name Exercise

Let's repeat the previous exercise, but now finding all the elements by their class name.

> #### Instruction
> Fork **[this coding exercise](https://jsfiddle.net/93kx2r60/3/)** on JSfiddle and complete it to get through this section.

## Further Reading

There's an awesome method that is a part of the document object called `querySelector`.

```javascript
document.querySelector('#name-field');
```

Here we make use of the query selector method to get element with the `id` "name-field". You can tell that we are looking for an `id` by the fact that "name-field" is lead by a `#` character.

If we wanted to access an element by class name with `.querySelector` we would do this:

```javascript
document.querySelector('.my-class');
```
Classes are lead by a `.`

Or we could access an element by Tag Name like this:

```javascript
document.querySelector('p');
```

As you can see, `querySelector` acts as a flexible version of all of the methods above!

### [More on query selectors](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector).

We will be using this method moving forward interchangeably with `getElementById` and other element finding methods.
