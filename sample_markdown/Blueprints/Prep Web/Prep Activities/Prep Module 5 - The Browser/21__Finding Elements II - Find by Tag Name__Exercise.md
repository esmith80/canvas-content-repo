

In this activity, we will learn how to access DOM elements by their __Tag Name__ with the `getElementsByTagName` DOM method.

### Finding elements by their Tag Name

**When you want to find a set of elements that use the same HTML Tag.**

An HTML 'Tag Name' is the set of characters used in between the `<` and the `>` of an HTML tag to identify what type of tag it is. 

```html
<p>The 'Tag Name' of this element is 'p'</p>
```

We can find elements by their Tag Name in JavaScript with the `document.getElementsByTagName` method.

```javascript
document.getElementsByTagName('p');
```

Keep in mind, this method is different from `document.getElementById` in the sense that it returns an `Array` of DOM objects instead of just one.


### Find Elements by Tag Name Exercise

> Use the `document.getElementsByTagName` method to select all the paragraph elements, then turn them into an array of **ONLY** strings (not DOM objects).

> Fork **[this coding exercise](https://jsfiddle.net/mL4xxsj5/10)** on JSfiddle and complete it.

If you get stuck, you can check out this **[video](https://www.youtube.com/watch?time_continue=249&v=SwMgOMfelC8)**.
