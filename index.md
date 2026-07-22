---
layout: default
title: Home
---

<div class="profile-container">
  <!-- Use Jekyll’s `relative_url` filter to build a stable path -->
  <img
    src="{{ '/assets/profile.png' | relative_url }}"
    alt="Jongmin Sung"
    class="profile-img"
  />
  <h1>Hi, I’m Jongmin!</h1>
</div>

Bio × AI researcher and writer — working at the intersection of computational
biology, deep learning, and biotechnology.

<div class="hub-links">
  <a class="hub-card" href="https://latentcell.ai">
    <span class="hub-card-title">LatentCell — Bio × AI Weekly →</span>
    <span class="hub-card-desc">My blog: one topic per issue at the intersection of biology and AI.</span>
  </a>
  <a class="hub-card" href="{{ '/assets/resume.pdf' | relative_url }}">
    <span class="hub-card-title">Résumé (PDF) →</span>
    <span class="hub-card-desc">AI Research Scientist — physics, biology, and computation.</span>
  </a>
  <a class="hub-card" href="{{ '/about/' | relative_url }}">
    <span class="hub-card-title">About →</span>
    <span class="hub-card-desc">Background, experience, and core competencies.</span>
  </a>
</div>

Also on [GitHub](https://github.com/jmsung) · [LinkedIn](https://www.linkedin.com/in/jongmin-sung).

<!--
  "Latest from the blog": the blog is a separate, standalone site. Its permanent
  home is https://latentcell.ai (RSS: https://latentcell.ai/rss.xml once the
  custom domain cutover completes). It is currently ALSO live at
  https://bioai-blog.vercel.app (RSS: https://bioai-blog.vercel.app/rss.xml).
  We deliberately link out (the LatentCell card above) instead of fetching or
  embedding the feed at build time: GitHub Pages permits no custom feed-fetch
  plugin, and a static link is the simplest thing that works. If we ever add an
  embed, point it at https://latentcell.ai/rss.xml after the domain cutover.
-->
