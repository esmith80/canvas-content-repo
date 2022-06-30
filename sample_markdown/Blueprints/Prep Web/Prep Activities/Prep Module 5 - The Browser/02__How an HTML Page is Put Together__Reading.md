---
uuid: a3d47667-461f-4b0e-86d4-2394e4c0eef6
name: 'Intro to HTML'
type: 'Reading'
duration: 45
outcomes:
  - de73909e-652c-4015-bc2e-f77f4055329c
  - ea7d247d-297d-4459-af93-0fb9163590c4
  - 5722a9c3-cf64-4de8-944c-30fbc0071409
  - ff238ea0-b91e-45d3-ba0e-2db5bf7b705b
  - e02ef8d7-4aa1-4690-85f2-3d4dae506529
---

In this activity, you will be introduced to the basics of HTML, specifically why it exists and what it does. You'll be introduced to the notion of HTML tags and even see some examples.

By the end of this activity, you should be able to open up an existing HTML page and read the tags. You won't recognize many of them (some are obvious, others require some researching), but you will be able to identify them as tags and understand the flow of the document and how it is structured.

## Reading

When the browser downloads a web page, the first job it has is to analyze the HTML page and decide how to display it. HTML is an abbreviation (or initialism) for <b>H</b>yper <b>T</b>ext <b>M</b>arkup <b>L</b>anguage, which is a very elaborate way of saying that regular text can be "marked up" to provide context and structure to the document.

### Tags & Elements

At a basic level, a tag is a letter or word surrounded by angle brackets (`<` and `>`). There are many different tags that the browser understands. Each one comes with a preset behaviour which the browser will apply to the content. The tag determines what the browser is going to do with the content inside of it. Most tags *wrap* around content.

For each tag that starts an _element_, there is a tag which closes it. The closing tags are indicated by putting a `/` character before the tag name. An opening header tag looks like this: `<header>`, and a closing header tag looks like this: `</header>`. Together they form the header _element_. All of the content between those two tags would behave like a header is expected to in the browser.

For example, this is a paragraph element:

```html
<p>This is a paragraph element. All of the content from the opening tag
at the beginning of the line until the closing paragraph tag
(the one with the / inside of it) will be treated as a single paragraph
by the browser.</p>
```

Web pages are filled with content, and all of the content behaves in a way that is described by the tags that surround it. Sometimes, you can have tags inside of other tags. Let's say that you have a paragraph like the one above. But, this time, we want to emphasize the words 'single paragraph' just before the end. HTML gives us the ability to do that, using the `<em>` tag.

```html
<p>This is a paragraph element. All of the content from the opening tag
at the beginning of the line until the closing paragraph tag (the
one with the / inside of it) will be treated as a <em>single paragraph</em>
by the browser.</p>
```

This paragraph would now appear like this:

This is a paragraph element. All of the content from the opening tag at the beginning of the line until the closing paragraph tag (the one with the / inside of it) will be treated as a *single paragraph* by the browser.

The `<em>` element is considered **nested** within the `<p>` element, as it is one element inside of another. HTML pages are built by nesting tags and content inside of each other. The browser is then smart enough to look all the way down to the innermost tags and decide how everything should be displayed.

### Page Structure

When the browser is analyzing the HTML, there are two main components of the page which the browser analyzes to understand how to present the page correctly. This is necessary, structurally, because the browser needs the content and the tags which wrap around the content to establish the layout of the page.

The browser also needs other information about how to draw the page. And it is even from a body that we get the tag names that denote these two different sections: `<head>` and `<body>`.

As a result, this is the standard layout of an HTML page:

```html
<!DOCTYPE html>
<html lang="...">
   <head>
        ...
   </head>
   <body>
        ...
   </body>
</html>
```

As you can see from the example above, it is built with nested tags. The `<head>` and `<body>` tags are nested inside of the `<html>` tag. The `<!DOCTYPE html>` at the top of the page tells the browser which set of rules to apply to the content. In this case, we are telling the browser that we want it to use the HTML5 rule set to understand and layout the page.

Everything that is between the opening and closing body tags (`<body>` and `</body>`) will be displayed in the main window of the browser. The body contains the content: the paragraphs, the images, the lists that make up the visible part of the web page.

So where does the browser get all of its instructions for colours, fonts, and other elements of the page? That (usually) all comes from the `<head>`. Inside the `<head>` is the metadata, describing other important details. This is where the browser expects to find stylesheets, scripts, language settings, and any other metadata that it might need to understand and render the content in the `<body>` tags.

### Common Metadata Tags

Here are some of the more common metadata tags that you will see in an HTML document:

`<title>` - There can be only one title tag per document. This determines the title of the document for display in the browser (usually on the tab of your browser) and also what the name will be if you bookmark the page.

`<link>` - A link tag is used to link an external stylesheet to your page. An external stylesheet is a separate file which the browser will download. It will contain CSS, which are the rules for the display and layout of the elements of your page.

`<script>` - A script tag is used to denote a block of JavaScript. JavaScript is a programming language which can run inside of your browser that can be used to create amazing interactions and effects on your page. Scripts can either be inline, meaning the script is written in the page itself, or external like stylesheets that are loaded via the `<link>` tag.

`<style>` - A style tag allows you to define CSS rules inline, in the document itself. This is an alternative to using the `<link>` tag to load the CSS rules from an external file.

`<meta>` - This will contain other configuration options for the page itself, including language, keywords, and other settings that browsers and search engines can use to better represent your page.
