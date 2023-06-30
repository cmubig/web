---
title: Latest News
subtitle:
layout: page
show_sidebar: false
hide_footer: false
---

## Twitter Highlights

<table>
  <tr>
   <td> 
      <a class="twitter-timeline" data-width="600" data-height="600" href="https://twitter.com/CMUBigLab">Tweets by CMU BIG Lab</a>
      <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
   </td>
   <td>
      <a class="twitter-timeline" data-width="600" data-height="600" href="https://twitter.com/FridaRobot">Tweets by FRIDA Robot Painter</a>
      <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
   </td>
  </tr>
 </table>

## News Highlights

{% assign posts = site.posts | where:"categories","news" %}
<div class="columns is-multiline">
   {% for post in posts %}
   <div class="column is-4-desktop is-6-tablet">
      {% include post-card.html %}
   </div>
   {% endfor %}
</div>