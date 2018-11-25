---
layout: post
current: post
cover:  assets/images/posts/test-bars.png
navigation: True
title: Vedran Test Article
date: 2017-07-27 09:00:00
tags: [welcome-to-the-team, about]
class: post-template
subclass: 'post tag-getting-started'
author: vedran
---

## Some helpful info for new authors:

### Using tags:
<p>Ghost has a single, powerful organisational taxonomy, called tags.</p>
<p>It doesn't matter whether you want to call them categories, tags, boxes, or anything else. You can think of Ghost tags a lot like Gmail labels. By tagging posts with one or more keyword, you can organise articles into buckets of related content.</p>
<h2 id="basictagging">Basic tagging</h2>
<p>When you write a post, you can assign tags to help differentiate between categories of content. For example, you might tag some posts with <code>News</code> and other posts with <code>Cycling</code>, which would create two distinct categories of content listed on <code>/tag/news/</code> and <code>/tag/cycling/</code>, respectively.</p>
<p>If you tag a post with both <code>News</code> <em>and</em> <code>Cycling</code> - then it appears in both sections.</p>
<p>Tag archives are like dedicated home-pages for each category of content that you have. They have their own pages, their own RSS feeds, and can support their own cover images and meta data.</p>
<h2 id="theprimarytag">The primary tag</h2>
<p>Inside the Ghost editor, you can drag and drop tags into a specific order. The first tag in the list is always given the most importance, and some themes will only display the primary tag (the first tag in the list) by default. So you can add the most important tag which you want to show up in your theme, but also add a bunch of related tags which are less important.</p>
<p><mark><strong>News</strong>, Cycling, Bart Stevens, Extreme Sports</mark></p>
<p>In this example, <strong>News</strong> is the primary tag which will be displayed by the theme, but the post will also still receive all the other tags, and show up in their respective archives.</p>
<h2 id="privatetags">Private tags</h2>
<p>Sometimes you may want to assign a post a specific tag, but you don't necessarily want that tag appearing in the theme or creating an archive page. In Ghost, hashtags are private and can be used for special styling.</p>
<p>For example, if you sometimes publish posts with video content - you might want your theme to adapt and get rid of the sidebar for these posts, to give more space for an embedded video to fill the screen. In this case, you could use private tags to tell your theme what to do.</p>
<p><mark><strong>News</strong>, Cycling, #video</mark></p>
<p>Here, the theme would assign the post publicly displayed tags of <code>News</code>, and <code>Cycling</code> - but it would also keep a private record of the post being tagged with <code>#video</code>.</p>
<p>In your theme, you could then look for private tags conditionally and give them special formatting:</p>
{% raw %}
<pre><code class="nohighlight">{{#post}}
    {{#has tag=&quot;#video&quot;}}
        ...markup for a nice big video post layout...
    {{else}}
        ...regular markup for a post...
    {{/has}}
{{/post}}
</code></pre>
<p>You can find documentation for theme development techniques like this and many more over on Ghost's extensive <a href="https://themes.ghost.org/">theme documentation</a>.</p>
{% endraw %}

### General Markup
Some code:

**This is a test post.**

### A list:
1. stuff
2. yep
3. foobar
 
[A Link](https://www.google.com) blah blah

You can even blend in HTML with markdown on the same page.
<pre><code>.my-link {
    text-decoration: underline;
}
</code></pre>


<p>There are lots of powerful things you can do with the Ghost editor</p>
<p>If you've gotten pretty comfortable with <a href="/the-editor/">all the basics</a> of writing in Ghost, then you may enjoy some more advanced tips about the types of things you can do with Markdown!</p>
<p>As with the last post about the editor, you'll want to be actually editing this post as you read it so that you can see all the Markdown code we're using.</p>
<h2 id="specialformatting">Special formatting</h2>
<p>As well as bold and italics, you can also use some other special formatting in Markdown when the need arises, for example:</p>
<ul>
<li><s>strike through</s></li>
<li><mark>highlight</mark></li>
<li>*escaped characters*</li>
</ul>
<h2 id="writingcodeblocks">Writing code blocks</h2>
<p>There are two types of code elements which can be inserted in Markdown, the first is inline, and the other is block. Inline code is formatted by wrapping any word or words in back-ticks, <code>like this</code>. Larger snippets of code can be displayed across multiple lines using triple back ticks:</p>
<pre><code>.my-link {
    text-decoration: underline;
}
</code></pre>
<p>If you want to get really fancy, you can even add syntax highlighting using <a href="http://prismjs.com/">Prism.js</a>.</p>
<h2 id="fullbleedimages">Full bleed images</h2>
<p>One neat trick which you can use in Markdown to distinguish between different types of images is to add a <code>#hash</code> value to the end of the source URL, and then target images containing the hash with special styling. For example:</p>
<p><img src="https://casper.ghost.org/v1.0.0/images/walking.jpg#full" alt="walking"></p>
<p>which is styled with...</p>
<pre><code>img[src$=&quot;#full&quot;] {
    max-width: 100vw;
}
</code></pre>
<p>This creates full-bleed images in the Casper theme, which stretch beyond their usual boundaries right up to the edge of the window. Every theme handles these types of things slightly differently, but it's a great trick to play with if you want to have a variety of image sizes and styles.</p>
<h2 id="referencelists">Reference lists</h2>
<p><strong>The quick brown <a href="https://en.wikipedia.org/wiki/Fox" title="Wikipedia: Fox">fox</a>, jumped over the lazy <a href="https://en.wikipedia.org/wiki/Dog" title="Wikipedia: Dog">dog</a>.</strong></p>
<p>Another way to insert links in markdown is using reference lists. You might want to use this style of linking to cite reference material in a Wikipedia-style. All of the links are listed at the end of the document, so you can maintain full separation between content and its source or reference.</p>
<h2 id="creatingfootnotes">Creating footnotes</h2>
<p>The quick brown fox<sup class="footnote-ref"><a href="#fn1" id="fnref1">[1]</a></sup> jumped over the lazy dog<sup class="footnote-ref"><a href="#fn2" id="fnref2">[2]</a></sup>.</p>
<p>Footnotes are a great way to add additional contextual details when appropriate. Ghost will automatically add footnote content to the very end of your post.</p>
<h2 id="fullhtml">Full HTML</h2>
<p>Perhaps the best part of Markdown is that you're never limited to just Markdown. You can write HTML directly in the Ghost editor and it will just work as HTML usually does. No limits! Here's a standard YouTube embed code as an example:</p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/Cniqsc9QfDo?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
<hr class="footnotes-sep">
<section class="footnotes">
<ol class="footnotes-list">
<li id="fn1" class="footnote-item"><p>Foxes are red <a href="#fnref1" class="footnote-backref">↩︎</a></p>
</li>
<li id="fn2" class="footnote-item"><p>Dogs are usually not red <a href="#fnref2" class="footnote-backref">↩︎</a></p>
</li>
</ol>


<p>Below is just about everything you’ll need to style in the theme. Check the source code to see the many embedded elements within paragraphs.</p>


<hr />

<h1 id="heading1">Heading 1</h1>

<h2 id="heading2">Heading 2</h2>

<h3 id="heading3">Heading 3</h3>

<h4 id="heading4">Heading 4</h4>

<h5 id="heading5">Heading 5</h5>

<h6 id="heading6">Heading 6</h6>

<hr />

<p>Lorem ipsum dolor sit amet, <a title="test link" href="#">test link</a> adipiscing elit. <strong>This is strong.</strong> Nullam dignissim convallis est. Quisque aliquam. <em>This is emphasized.</em> Donec faucibus. Nunc iaculis suscipit dui. 5<sup>3</sup> = 125. Water is H<sub>2</sub>O. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. <cite>The New York Times</cite> (That’s a citation). <span style="text-decoration:underline;">Underline.</span> Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.</p>

<p><abbr title="Hyper Text Markup Language">HTML</abbr> and <abbr title="Cascading Style Sheets">CSS</abbr> are our tools. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.  Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. To copy a file type <code>COPY <var>filename</var></code>. <del>Dinner’s at 5:00.</del> <ins>Let’s make that 7.</ins> This <span style="text-decoration:line-through;">text</span> has been struck.</p>

<hr />

<h2 id="media">Media</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>

<h3 id="bigimage">Big Image</h3>

<p><img src="http://demo.ghost.io/content/images/2014/09/testimg1.jpeg" alt="Test Image" /></p>

<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>

<h3 id="smallimage">Small Image</h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>

<p><img src="http://demo.ghost.io/content/images/2014/09/testimg2.jpg" alt="Small Test Image" /></p>

<p>Labore et dolore.</p>

<hr />

<h2 id="listtypes">List Types</h2>

<h3 id="definitionlist">Definition List</h3>

<dl>
<dt>Definition List Title</dt>
<dd>This is a definition list division.</dd>
<dt>Definition</dt>
<dd>An exact statement or description of the nature, scope, or meaning of something: <em>our definition of what constitutes poetry.</em></dd>
</dl>

<h3 id="orderedlist">Ordered List</h3>

<ol>
<li>List Item 1  </li>
<li>List Item 2 <br />
<ol><li>Nested list item A</li>
<li>Nested list item B</li></ol></li>
<li>List Item 3</li>
</ol>

<h3 id="unorderedlist">Unordered List</h3>

<ul>
<li>List Item 1</li>
<li>List Item 2
<ul><li>Nested list item A</li>
<li>Nested list item B</li></ul></li>
<li>List Item 3</li>
</ul>

<hr />

<h2 id="table">Table</h2>

<table>
<tbody>
<tr>
<th>Table Header 1</th>
<th>Table Header 2</th>
<th>Table Header 3</th>
</tr>
<tr>
<td>Division 1</td>
<td>Division 2</td>
<td>Division 3</td>
</tr>
<tr class="even">
<td>Division 1</td>
<td>Division 2</td>
<td>Division 3</td>
</tr>
<tr>
<td>Division 1</td>
<td>Division 2</td>
<td>Division 3</td>
</tr>
</tbody>
</table>

<hr />

<h2 id="preformattedtext">Preformatted Text</h2>

<p>Typographically, preformatted text is not the same thing as code. Sometimes, a faithful execution of the text requires preformatted text that may not have anything to do with code. Most browsers use Courier and that’s a good default — with one slight adjustment, Courier 10 Pitch over regular Courier for Linux users.</p>

<h3 id="code">Code</h3>

<p>Code can be presented inline, like <code>&lt;?php bloginfo('stylesheet_url'); ?&gt;</code>, or within a <code>&lt;pre&gt;</code> block. Because we have more specific typographic needs for code, we’ll specify Consolas and Monaco ahead of the browser-defined monospace font.</p>

<p>Code blocks can also be inserted with the highlight tag as below:</p>
<pre>
    {% raw %}
    {% highlight language-x %}
    # some code
    {% endhighlight %}
    {% endraw %}
</pre>

<p>More information about code highlighting in jekyll can be found  <a href="https://jekyllrb.com/docs/templates/#code-snippet-highlighting">in Jekyll documentation</a>.</p>

<p>These area a couple of examples showing the resulting highlighted code:</p>

{% highlight css %}
/* css code sample */
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
{% endhighlight %}


{% highlight javascript linenos %}
// javascript code sample
$.ajax({
  type: 'POST',
  url: 'backend.php',
  data: "q="+myform.serialize(),
  success: function(data){
    // on success use return data here
  },
  error: function(xhr, type, exception) {
    // if ajax fails display error alert
    alert("ajax error response type "+type);
  }
});
{% endhighlight %}

<p>Now you can also use <a href="https://highlightjs.org/">highlight.js</a>.
For more on how to use it and on the available styles check their
<a href="https://highlightjs.org/static/demo/">demo</a> and
<a href="http://highlightjs.readthedocs.org/en/latest/">documentation</a> pages.</p>

<div class="system">
<pre><code class="swift">// Swift code sample
import Foundation

@objc class Person: Entity {
  var name: String!
  var age:  Int!

  init(name: String, age: Int) {
    /* /* ... */ */
  }

  // Return a descriptive string for this person
  func description(offset: Int = 0) -> String {
    return "\(name) is \(age + offset) years old"
  }
}
</code></pre>
</div>


<hr />

<h2 id="blockquotes">Blockquotes</h2>

<p>Let’s keep it simple. Italics are good to help set it off from the body text. Be sure to style the citation.</p>

<blockquote>
  <p>Good afternoon, gentlemen. I am a HAL 9000 computer. I became operational at the H.A.L. plant in Urbana, Illinois on the 12th of January 1992. My instructor was Mr. Langley, and he taught me to sing a song. If you’d like to hear it I can sing it for you. <cite>— <a href="http://en.wikipedia.org/wiki/HAL_9000">HAL 9000</a></cite></p>
</blockquote>

<p>And here’s a bit of trailing text.</p>

<hr />

<h2 id="textlevelsemantics">Text-level semantics</h2>

<p>The <a href="#">a element</a> example <br />
The <abbr>abbr element</abbr> and <abbr title="Title text">abbr element with title</abbr> examples <br />
The <b>b element</b> example <br />
The <cite>cite element</cite> example <br />
The <code>code element</code> example <br />
The <del>del element</del> example <br />
The <dfn>dfn element</dfn> and <dfn title="Title text">dfn element with title</dfn> examples <br />
The <em>em element</em> example <br />
The <i>i element</i> example <br />
The <ins>ins element</ins> example <br />
The <kbd>kbd element</kbd> example <br />
The <mark>mark element</mark> example <br />
The <q>q element <q>inside</q> a q element</q> example <br />
The <s>s element</s> example <br />
The <samp>samp element</samp> example <br />
The <small>small element</small> example <br />
The <span>span element</span> example <br />
The <strong>strong element</strong> example <br />
The <sub>sub element</sub> example <br />
The <sup>sup element</sup> example <br />
The <var>var element</var> example <br />
The <u>u element</u> example</p>

<hr />

<h2 id="forms">Forms</h2>

<form>
<fieldset>
<legend>Inputs as descendents of labels (form legend)</legend>
<label>
<b>Text input</b>
<input type="text" value="default value">
</label>
<label>
<b>Email input</b>
<input type="email">
</label>
<label>
<b>Search input</b>
<input type="search">
</label>
<label>
<b>Tel input</b>
<input type="tel">
</label>
<label>
<b>URL input</b>
<input type="url" placeholder="http://">
</label>
<label>
<b>Password input</b>
<input type="password" value="password">
</label>
<label>
<b>File input</b>
<input type="file">
</label>
<label>
<b>Radio input</b>
<input type="radio" name="rad">
</label>
<label>
<b>Checkbox input</b>
<input type="checkbox">
</label>
<label>
<input type="radio" name="rad"> Radio input
</label>
<label>
<input type="checkbox"> Checkbox input
</label>
<label>
<b>Select field</b>
<select>
<option>Option 01</option>
<option>Option 02</option>
</select>
</label>
<label>
<b>Textarea</b>
<textarea cols="30" rows="5" >Textarea text</textarea>
</label>
</fieldset>

<fieldset>
<legend>Clickable inputs and buttons</legend>
<input type="image" src="http://placekitten.com/90/24" alt="Image (input)">
<input type="reset" value="Reset (input)">
<input type="button" value="Button (input)">
<input type="submit" value="Submit (input)">
<button type="reset">Reset (button)</button>
<button type="button">Button (button)</button>
<button type="submit">Submit (button)</button>
</fieldset>

<fieldset id="boxsize">
<legend>box-sizing tests</legend>
<div><input type="text" value="text"></div>
<div><input type="email" value="email"></div>
<div><input type="search" value="search"></div>
<div><input type="url" value="http://example.com"></div>
<div><input type="password" value="password"></div>

<div><input type="color" value="#000000"></div>
<div><input type="number" value="5"></div>
<div><input type="range" value="10"></div>
<div><input type="date" value="1970-01-01"></div>
<div><input type="month" value="1970-01"></div>
<div><input type="week" value="1970-W01"></div>
<div><input type="time" value="18:23"></div>
<div><input type="datetime" value="1970-01-01T00:00:00Z"></div>
<div><input type="datetime-local" value="1970-01-01T00:00"></div>

<div><input type="radio"></div>
<div><input type="checkbox"></div>

<div><select><option>Option 01</option><option>Option 02</option></select></div>
<div><textarea cols="30" rows="5" >Textarea text</textarea></div>

<div><input type="image" src="http://placekitten.com/90/24" alt="Image (input)"></div>
<div><input type="reset" value="Reset (input)"></div>
<div><input type="button" value="Button (input)"></div>
<div><input type="submit" value="Submit (input)"></div>

<div><button type="reset">Reset (button)</button></div>
<div><button type="button">Button (button)</button></div>
<div><button type="submit">Submit (button)</button></div>
</fieldset>
</form>

<hr />

<h2 id="embeds">Embeds</h2>

<p>Sometimes all you want to do is embed a little love from another location and set your post alive.</p>

<h3 id="video">Video</h3>

<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<iframe src="//player.vimeo.com/video/103224792?title=0&amp;byline=0&amp;portrait=0" width="600" height="338" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

<p>Culpa qui officia deserunt mollit anim id est laborum.</p>

<h3 id="slides">Slides</h3>

<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<script async class="speakerdeck-embed" data-id="34d2856027ce01316b5d621ab8e7d421" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

<p>Culpa qui officia deserunt mollit anim id est laborum.</p>

<h3 id="audio">Audio</h3>

<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/169381837&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>

<p>Culpa qui officia deserunt mollit anim id est laborum.</p>

<h3 id="code">Code</h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>

<p><div data-height="268" data-theme-id="0" data-slug-hash="bcqhe" data-default-tab="js" data-user="rglazebrook" class='codepen'></p>

<pre><code>var c = new Sketch.create({autoclear: false}),
    bigCircle = 50,
    littleCircle = 5,
    // The velocity value determines how much to move the spinner head (in radians).
    velocity = 0.105,
    hue = 0,
    // The alpha value below determines the length of the spinner&#39;s tail.
    bg = &#39;rgba(40,40,40,.075)&#39;;
    Spinner = function() {};

Spinner.prototype.setup = function() {
  this.x = c.width / 2;
  this.y = c.height / 2 - bigCircle;
  this.rotation = 0;
}
Spinner.prototype.update = function() {
  this.rotation += velocity;
  this.rotation = this.rotation % TWO_PI;
  this.x = c.width /2 + cos(this.rotation) * bigCircle;
  this.y = c.height / 2 + sin(this.rotation) * bigCircle;
}
Spinner.prototype.draw = function() {
  c.fillStyle = &#39;hsl(&#39;+hue+&#39;,50%,50%)&#39;;
  c.beginPath();
  c.arc(this.x, this.y, littleCircle, 0, TWO_PI);
  c.fill();
  c.closePath();
}
c.setup = function() {
  spinner = new Spinner();
  spinner.setup();
}
c.update = function() {
  spinner.update();
  hue = ++hue % 360;
}
c.draw = function() {
  spinner.draw();
  c.fillStyle = bg;
  c.fillRect(0,0,c.width,c.height);
}
</code></pre>

<p>See the Pen <a href='http://codepen.io/rglazebrook/pen/bcqhe/'>Simple Rotating Spinner</a> by Rob Glazebrook (<a href='http://codepen.io/rglazebrook'>@rglazebrook</a>) on <a href='http://codepen.io'>CodePen</a>.</p>

<p></div><script async src="//codepen.io/assets/embed/ei.js"></script></p>

<p>Isn't it beautiful?</p>
