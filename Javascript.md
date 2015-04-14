Nizar's JavaScript Methodology
==============================

0. Move `<script>` tags to the end of the `<body>` tag.
1. Think about the desired experience
  - Which page does this happen on?
  - Which users does this happen for?
  - What is the trigger for this to happen?
2. Add any HTML elements necessary for the trigger.
3. Selecting those elements.
  - Add a selector to the HTML elements that is for JavaScript's use only.
  - Select the element in the inspector.
  - Add the jQuery code for selection to my JavaScript file.
3. Add events to the selector.
4. Fill in my event handlers with the desired code.
  - (any JavaScript code works, including more jQuery calls).

Example HTML
------------

```html
<!-- Use class names prefixed by "js-" to distiguish them as for JavaScript -->
<button class="js-celebrate">Celebrate</button>
```

Example JavaScript
------------------

```js
// Defining named functions helps keep track of parentheses
function onCelebrateClick ()
{
  console.count('Holiday! Celebrate!');

  // Adding additional HTML is just a question of building it as a string.
  var html = '<p>Paragraph</p>';

  $('body').append(html);
}

// Remember that class selectors start with "."
$('.js-celebrate').on('click', onCelebrateClick);
```