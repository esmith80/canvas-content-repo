---
uuid: d85cbc84-9b49-43c5-811f-b17307acffcc
duration: 60
---


In this activity, we will explore the two primary ways to use JavaScript to change what's on a page without refreshing it.

## Exercise

### Change Content with `.innerHTML`

Every DOM object has a set of methods and properties that a developer can use to change it.

One such property is the `innerHTML` property.

You may be aware that you can access the content of an element with `innerHTML`, but you can also use `innerHTML` to change it.

```javascript
// first we find the element
const elm = document.getElementById('paragraph-1');
// then we set it's innerHTML property
elm.innerHTML = 'My new text';
```

> #### Instruction
> Fork this **[coding exercise on JSfiddle](https://jsfiddle.net/gme3rkef/)** and complete it to get through this section.

### Changing Attributes

We've talked about the `id` and `class` attributes, but HTML tags like `img` also make use of attributes like `width` and `height` to set it's size.

In order to change the value of an image's width with JavaScript, we would need to change the `width` attribute of the `img` element.

Let's say we have an `<img />` element in our HTML which has the following code in the HTML file.

```html
<img id="lhl-logo" src="http://bit.ly/29O2uM2" width="400" />
```

We could then use the following JavaScript code to change its width to 300 pixels.

```javascript
document.getElementById('lhl-logo').width = '300';
```

### Changing Attributes Exercise

To practice this, fork this **[JavaScript snippet](https://jsfiddle.net/j6g5ehe2/1/)** and solve the mini challenge that is posted there.

> #### Note
> To add the delay, look up the built-in `setTimeout` JavaScript function.

### Adding New Attributes

We have changed the attributes of a particular HTML element with JavaScript, but we can also add new ones!

```javascript
document.querySelector('#name-field').setAttribute('placeholder', 'Jane Doe');
```

We use `setAttribute` rather than something like `.placeholder = 'Jane Doe'` because `setAttribute` will create the attribute if it doesn't already exist. The method we used earlier to change the width of an image only works because the width attribute already exists on the element.

### Adding Attributes Exercise

To practice adding attributes, checkout this **[JavaScript snippet](https://jsfiddle.net/e8t45okd/1/)** and solve the mini challenge that is posted there.
