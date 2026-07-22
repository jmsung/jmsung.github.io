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

<section class="scale-hero">
  <p class="scale-hero-eyebrow">the same spiral, at every scale</p>
  <p class="scale-hero-sub">From a single cell to the Andromeda galaxy, the same spiral repeats — with us in between, the way a kid on the grass looks up at the night sky. One topic a week where biology meets AI: TL;DR for the curious, depth for the advanced.</p>
  <div class="scale-triad">
    <figure class="scale-panel">
      <img src="{{ '/assets/img/hero/cell.jpg' | relative_url }}" alt="Living HeLa cell, fluorescence" loading="lazy" />
      <div class="scale-scrim"></div>
      <figcaption class="scale-label"><span class="n">The cell</span><span class="s">~10 µm</span></figcaption>
    </figure>
    <figure class="scale-panel">
      <img src="{{ '/assets/img/hero/human.jpg' | relative_url }}" alt="Vitruvian Man" loading="lazy" />
      <div class="scale-scrim"></div>
      <figcaption class="scale-label"><span class="n">The human</span><span class="s">~1 m · us</span></figcaption>
    </figure>
    <figure class="scale-panel">
      <img src="{{ '/assets/img/hero/andromeda.jpg' | relative_url }}" alt="Andromeda galaxy" loading="lazy" />
      <div class="scale-scrim"></div>
      <figcaption class="scale-label"><span class="n">Andromeda</span><span class="s">2.5M light-years</span></figcaption>
    </figure>
  </div>
  <p class="scale-credits">Cell: 8x57is, CC BY-SA 4.0 · Vitruvian Man: Leonardo da Vinci (public domain), photo Luc Viatour · Andromeda: Adam Evans, CC BY 2.0 — all via Wikimedia Commons</p>
</section>

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
