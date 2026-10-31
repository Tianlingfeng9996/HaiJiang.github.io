---
title: "Research"
permalink: /research/
author_profile: true
excerpt: "Current research on time-series data segmentation and robot manipulation, with a background in myoelectric prosthetics."
---

## Current research in the Nakamura Laboratory

I am an Assistant Professor in the [Nakamura Laboratory](https://hp.naka-lab.org/) at the University of Electro-Communications. My current research includes **time-series data segmentation** and **robot manipulation**, combining signal processing, machine learning, and robotics.

- **Time-series data segmentation:** identifying meaningful segments and structure in sequential data.
- **Robot manipulation:** studying sensing, learning, and control for robot–object interaction.

## Previous research: myoelectric prosthetic hands

The following sections describe my research background in biosignal processing and prosthetic hands.

My research focuses on **human-centered myoelectric prosthetic hands**: systems that decode a user's intention, adapt to changing biosignals, interact safely with objects, and remain mechanically forgiving in real tasks.

<div class="page-lead">
  <strong>Long-term goal:</strong> a prosthetic hand that understands its user and the task, improves through use, and reduces the burden of repeated recalibration.
</div>

## 1. Continuous multi-DOF myoelectric control

Most pattern-recognition prostheses select one discrete grasp at a time. I study regression-based control that maps surface electromyography (sEMG) directly to multiple finger-joint angles, enabling smoother transitions and more biomimetic motion.

Our **TF2AngleNet** framework combines raw time-domain sEMG with multidimensional time–frequency representations to estimate six finger-joint angles. The work also uses non-contact motion measurement to align hand kinematics with high-rate sEMG.

**Key questions**

- Which signal representations preserve movement information while remaining suitable for real-time control?
- How should multi-joint motion be modeled when several fingers are activated together?
- How can inference and communication be implemented reliably on an embedded prosthetic-hand system?

<div class="tag-row">
  <span>sEMG regression</span><span>multi-DOF control</span><span>CNNs</span><span>real-time inference</span><span>embedded systems</span>
</div>

## 2. Personalization with limited calibration

Myoelectric signals vary substantially across people, days, fatigue levels, electrode positions, and donning conditions. A model that performs well once is not enough; it must be easy to personalize and maintain.

I investigate **few-shot fine-tuning**, cross-user transfer, robustness to sensor displacement, and online adaptation. A central design constraint is calibration burden: adaptation should use a small number of representative movements and fit naturally into a user's routine.

Current directions include:

- selecting compact calibration sets that improve both trained and untrained movements;
- adapting across days and users without erasing previously learned behavior;
- learning from reliable, successful interactions rather than every incoming sample;
- moving personalization from a workstation toward edge and on-device deployment.

<div class="tag-row">
  <span>few-shot adaptation</span><span>domain shift</span><span>continual learning</span><span>sensor robustness</span><span>edge AI</span>
</div>

## 3. Prosthetic finger mechanics and compliant grasping

Control intelligence cannot compensate for every uncertainty in contact. I therefore also design finger mechanisms that use **passive mechanics** to improve grasping.

This work explores passive hyperextension at distal finger joints, compliant fingertips, underactuated transmission, and stiffness selection. The aim is to let the hand conform to objects and tolerate positioning errors without requiring more motors or more complicated control.

Evaluation combines:

- standardized prosthetic-hand assessment tasks;
- benchtop force–angle characterization;
- healthy-participant and amputee experiments;
- comparison of joint constraints, spring settings, and fingertip compliance.

<div class="tag-row">
  <span>underactuated hands</span><span>passive stability</span><span>compliant fingertips</span><span>grasp evaluation</span><span>mechanism design</span>
</div>

## 4. Multimodal grasp-state understanding and safe control

A practical prosthesis should recognize not only what the user intends, but also **what is happening to the object**. I study the integration of wrist-camera images, fingertip pressure, and inertial sensing to estimate grasp stage and stability.

This supports shared-control strategies that can suppress accidental opening during transport while preserving intentional release. It also creates a route toward self-improvement: successful interactions can be identified and reused as high-quality adaptation data.

<div class="tag-row">
  <span>vision</span><span>pressure sensing</span><span>IMU</span><span>grasp-state recognition</span><span>safe shared control</span>
</div>

## Research principles

<div class="principle-grid">
  <article>
    <h3>Start from variability</h3>
    <p>Biosignals and daily use are non-stationary. Robustness and adaptation are core requirements, not afterthoughts.</p>
  </article>
  <article>
    <h3>Co-design body and intelligence</h3>
    <p>Mechanics, sensing, learning, and control should be designed together around the same real-world tasks.</p>
  </article>
  <article>
    <h3>Minimize user burden</h3>
    <p>Higher performance matters only when setup, recalibration, and operation remain manageable for the user.</p>
  </article>
</div>

## Methods and platforms

My work combines deep learning, signal processing, embedded inference, Bluetooth communication, motion capture, mechanical prototyping, force testing, standardized prosthetic-hand assessments, and virtual/physical task environments. Experimental systems include multi-DOF myoelectric hands such as the **BIT-UEC HAND**.

For papers and publication links, see [Publications]({{ '/publications/' | relative_url }}). For collaboration inquiries, see [Contact]({{ '/contact/' | relative_url }}).
