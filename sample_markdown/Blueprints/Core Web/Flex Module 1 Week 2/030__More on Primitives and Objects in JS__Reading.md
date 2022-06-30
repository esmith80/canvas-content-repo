---
uuid: ea6df177-5ab1-4987-87f0-fa7753ffe65e
tags: focal
duration: 15
stretch: true
---

In a previous reading titled [Primitive Data Types](/ab07e19a-79dd-496a-9fb9-cf82209170b4), we learned about primitive data types. We also alluded to some more interesting JavaScript-specific quirks related to them some of which are covered in the reading below.

## Primitive Types Don't Have Properties

> #### Information
> In JavaScript, primitive values *do not have properties*. 

At first when you read this, you might not notice what's surprising about this. _"So what?"_, you say. Well, if a property is that thing you can access like `object.property`, and if primitive values don't have properties, and a string is a primitive... then what's the deal with `"some string".length` or `5.toString()`? 

These statements do in fact work. Yet it appears that we are calling properties on primitive types, which technically shouldn't be possible based on the rule stated above!

You next thought may be: _"Ah right, good point! So how does that work then?"_. Well, we're glad you asked!

## Primitive Types Have Corresponding Objects

Each primitive (excluding `symbol` which has weird rules) has a corresponding object constructor; you can see this clearly in the following example:

```javascript
typeof(true); 
// "boolean" 
typeof(Boolean(true)); 
// => "boolean" 
typeof(new Boolean(true));
// => "object"
/*  
  It is generally considered bad practice to use primitive object constructors (as shown in the final line above). 
*/
```

An object constructor can be invoked with the word `new`, as seen above. Each object has methods associated with them based on what constructor was used.

As stated above, _primitive data types do not have properties_. So why exactly does `"someString".length` work? Let's take you back to the behaviour of `==` vs `===`. When you use `==`, JavaScript does this fun thing called type coercion. This means that JavaScript will take different data types, and one of them will be converted to an "equivalent". A good example of this is:

```javascript
'1' == 1; // type coercion occurs
// => true 
'1' === 1; 
// => false
```

Similarly, in the case of `"someString".length`, _"someString"_ is coerced to a string object in order to access the property length. However, `"someString"` itself is still a primitive data type.  

Here are some examples of calling String object properties, on a primitive string:  

```javascript
// some examples of String properties: 
const someString = "Lighthouse Labs"; 

console.log(someString.toUpperCase()); 
// => 'LIGHTHOUSE LABS'

console.log(someString.toLowerCase()); 
// => 'lighthouse labs'

console.log(someString.split("")); 
// => [ 'L', 'i', 'g', 'h', 't', 'h', 'o', 'u', 's', 'e', ' ', 'L', 'a', 'b', 's' ]
```

You can actually test the difference between the constructor and actual primitive. In the next example we can see that the `==` (type-coercion vulnerable) comparative returns true, while the `===` comparative returns false.  

```javascript
const greeting = "Hello, world!" 
const objGreeting = new String("Hello, world!");

greeting == objGreeting; 
// => true

greeting === objGreeting; 
// => false
```

We see above that despite having the same string content, the primitive string is not the exact same as an object string. However, using `==` allows JS to convert one of them so that their types match.

## Further Reading

If you'd like another source to read more about JavaScript values, please continue onto this reading here:
http://2ality.com/2011/03/javascript-values-not-everything-is.html

## Conclusion

In this stretch reading we learned that almost all primitive types have their equivalent object representations, such that we can invoke properties on those primitive types. JavaScript performs type coercion on strings, numbers, and other primitive types, turning them into objects in order to make them act like objects. 
