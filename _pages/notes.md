---
title: "Learning Notes · 学习笔记"
permalink: /notes/
lang: zh
author_profile: true
excerpt: "课程学习、概念理解与动手实践的笔记：用自己的话解释，借助例子验证，并记录尚未解决的问题。"
---

<div class="page-lead">
  <strong>把学过的知识，变成能够解释和使用的知识。</strong>
  <p>这里记录我的课程学习、概念理解和动手实践。每篇笔记围绕一个问题，用自己的话梳理思路，通过例子、推导或代码检验理解，并保留仍需探索的疑问。</p>
  <p lang="en">A notebook of course reflections, concepts, and hands-on experiments—explaining ideas in my own words and checking them through examples.</p>
</div>

这些笔记反映学习过程中某一阶段的理解，会随着实践持续修订。正式研究成果请参见[论文页面]({{ '/publications/' | relative_url }})。

## 笔记目录

{% assign learning_notes = site.notes | where_exp: 'note', 'note.published != false' | sort: 'date' | reverse %}
{% if learning_notes.size > 0 %}
<div class="learning-notes-list">
{% for note in learning_notes %}
  <article class="learning-note-entry">
    <p class="learning-note-entry__meta"><time datetime="{{ note.date | date_to_xmlschema }}">{{ note.date | date: '%Y-%m-%d' }}</time>{% if note.topic %} · {{ note.topic | escape }}{% endif %}{% if note.lang %} · {{ note.lang | escape }}{% endif %}</p>
    <h3><a href="{{ note.url | relative_url }}">{{ note.title | escape }}</a></h3>
    {% if note.summary %}<p>{{ note.summary | escape }}</p>{% endif %}
    {% if note.tags.size > 0 %}<p class="learning-note-entry__tags">{% for tag in note.tags %}<span>{{ tag | escape }}</span>{% endfor %}</p>{% endif %}
  </article>
{% endfor %}
</div>
{% else %}
<p class="learning-notes-empty">第一篇笔记正在准备中。</p>
{% endif %}

## 我想怎样记录学习

- **从问题开始：** 这个概念要解决什么问题，为什么值得学？
- **用自己的话解释：** 不依赖原文，我能否把它讲清楚？
- **用例子检验：** 一个小例子、公式推导或可运行代码，是否支持我的理解？
- **记录边界与疑问：** 什么条件下适用，哪些地方还需要验证？
- **回到研究与实践：** 它与我的工作有什么联系，下一步可以尝试什么？

课程、教材、论文和代码的来源会在各篇笔记中注明。欢迎通过[邮件](mailto:jianghai@uec.ac.jp)讨论或指正。
