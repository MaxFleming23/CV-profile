---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-06-19
type: landing

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV (PDF)
        url: uploads/Max-Fleming-CV.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true

      # Name heading sizing to accommodate long or short names
      name:
        size: md # Options: xs, sm, md, lg (default), xl

      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    id: research
    content:
      title: '🔬 Research'
      subtitle: ''
      text: |-
        My background is in theoretical and experimental physics. For my Honours
        year at the ANU I wrote a thesis on **non-perturbative spinor tunnelling
        in interacting quantum fields** (graded 97%), combining theoretical
        exposition, analytic derivations and numerical modelling.

        Alongside this I have completed a series of undergraduate research
        projects across nuclear, particle and quantum-optical physics:

        - **Nuclear magnetism** — magnetic-moment measurements in iron-55
        - **Optical quantum memory** — investigating the Gradient Echo Memory technique
        - **Nuclear structure** of neutron-rich ¹⁵²Nd via gamma-ray spectroscopy

        I have presented and participated at the CDMPP Theory Workshop, the NUPP
        Postgraduate Summer School and the AIP Summer Meeting. I'm always happy
        to talk physics or collaborate — [get in touch](mailto:max@maxfleming.xyz).

        📄 Prefer the source? Download the [**CV as PDF**](uploads/Max-Fleming-CV.pdf)
        or grab the [**LaTeX source**](uploads/Max-Fleming-CV.tex) — both are
        rendered automatically from this site's repository on every update.
    design:
      columns: '1'
---
