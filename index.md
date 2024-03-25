---
title: CMU BIG
subtitle: roBot Intelligence Group
layout: page
show_sidebar: false
hide_footer: false
# hero_height: is-medium
hero_height: is-large
hero_image: ./img/big-homepage_gif.gif
hero_link: /publications/
hero_link_text: Our Research
hero_link2: /current-members/
hero_link_text2: Our Team
---

# About Us

The roBot Intelligence Group (BIG) is a robotics research lab led by [Jean Oh](https://www.cs.cmu.edu/~jeanoh/) at the [Robotics Institute](https://www.ri.cmu.edu/)
at [Carnegie Mellon University](https://www.cmu.edu/).
At BIG, we aim to develop robots that can collaborate with humans in shared environments, learning to improve themselves over time through continual on- and off-line training, exploration, and interactions with humans and environments. 
Towards this general goal, we strive to answer research questions on how to make robots to understand 
various semantic contexts of physical and/or social environments, act in both task-effective and 
socially-compliant manners, and communicate their internal states with other agents in intuitive ways.


## Research areas 

semantic robot navigation, social robot navigation, human-robot interaction/collaboration, vision 
language planning, creative AI, arts and robotics, simulation-to-real adaptation, robotic intelligence, 
cognitive robotics


## Highlights

{% assign posts = site.posts | where:"categories","highlights" %}
<div class="columns is-multiline">
    {% for post in posts %}
    <div class="column is-4-desktop is-6-tablet">
        {% include post-card.html %}
    </div>
    {% endfor %}
</div>
