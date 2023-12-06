# 541 Focused Literature Report

Name: Alan Manuel Loreto Cornídez Date Due: December 6th

Instructor: Dr. Hal Tharp

## Introduction



## Paper Summaries

### Linear-Like Policy Iteration Based Optimal Control For Continuous-Time Nonlinear Systems

The first paper, "Linear-Like Policy Iteration Based Optimal Control For Continuous-Time Nonlinear Systems", which will now pe referred to as "Paper 1", written by Adnan Tahirović and Alessandro Astolfi, proposes a strategy to create controllers for non-linear systems in an optimal, asymptotically exact, linear like method. This goal is achieved by replacing the Hamilton-Jacobian-Bellman (HJB) partial differential equation (PDE) with the Lyapunov equation, sometimes referred to as the Stein equation.

Tahirović and Astolfi state that multiple methods to solve the HJB PDE have been presented. In addition to being difficult, if not impossible to solve the HJB PDE, the methods presented have a variety of assumptions as well as a significant cost to the optimality of the solution. The authors mention that the use of the Pontryagin maximum principle addresses the problem for optimality of the solution of the system. They also mention that the use of direct discretization of the system is used to solve optimal control problems. The two methods used in conjunction have been used to reliably and quickly solve systems using computer programs and calculators. Because of this already present solution, they justify their efforts for using the HJB equation to provide the unique optimal solution for the entire statespace of the system, instead of a optimal solution for a linearization of a non-linear system.

After giving this justification, the authors present a few techniques that are used to solve the HJB equation. They present the first class of techniques presented in 1983 for the Viscosity solutions of Hamilton-Jacobi equations. The methods referenced require that the solution be continous, by not necessarily differtiable. However, this method requires the discretization of the system, which creates an exponentially more expensive solution as the state space of the system increases. The second class of techniques referenced by Tahirović and Astolfi are based on the principle of model-based reinforcement learning with policy-iteration (PI) algorithms. The also mention that Galerkin approximations have been used to approximate solutions for a control system when the two aforementioned methods are implemented. They mention a third class of techniques that reduce the HJB to the state dependent Riccati equation (SDRE) when the control system is linearized near an equilibrium point at the cost of quadratic form of the system being compromised. This, of course, means that the aquirred solution has no guarentee of stability.

Finally, they mention that this paper provides a theoretical extension of their previous work. The method that they propose works for affine contrinuous-time nonlinear systems. Their method is based on the PI paradigm combined with the linear-like factorization approach mentioned in the last of the previously mentioned class of techniques to replace the HJB with the state-dependent Lyapunov equation (SDLE). This allows the control system to be soved in an asymptotically exact, but using linear-like methods to arrive to the solution. The solution rendered by their method only workds if the cost for that solution has a quadratic form. If this is not the case, the authors state that the optimal solution is suggested to be in the vicinity of the calculated soluton.

### Formulas for Data-Driven Control: Stabilization, Optimizality, and Robustness

Paper 2 was written by Claudio De Persis and Pietro Tesi. This paper presents a derivation of a parameterization of linear systems that allows the control engineer to control a system without the need for knowledge of the plant's system matrix elements. The paper mentions that they apply their parameterization method to control problems where they solve the state and output feedback stabilization, and the linear quaratic regulation problem. They also metnion how hte controller they derive is robust to noise. In addition, they also say that their current theory can be used to stabilize equilibria of nonlinear systems.

The paper very briefly mentions many of the resources that they have in their literature review. They state that data-driven methods, rather than system identification methods, range from adaptive control, neural networks theories, unfalsified control theory, iterative feeedback tuning, and virtual reference feedback tuning. They mention the implementation of many control techniques such as PID like control, model reference and output ptracking, predictive, robust, and optimal control, where optimal control is the most mentioned in the research.

This paper presents three concepts that I haven't really heard of in my experience learning control theory. The first is the use of a Linear Matrix Inequality, which the athors refer to as simple. The second is the use of linear quadratic regulators as one of the problems that their method can solve.

One of the points they stress in their conclusion is that their theory lays down the groundwork to allow engineers to systematically control systems with parameterization of the system is difficult. They explicitly mention non-linear systems and switched systems.

One of the interesting topics contained in this paper is the the remark on multiple-input, multiple-output (MIMO) systems. They mention single-input, single-output systems as well and mention that their method was derived using SISO systems. However, they very quickly mention that their thery can also apply to MIMO systems.

Some of the terms that the writers mention in regards to non lienar systems are the domain of attraction of a system as well lifting techniques for control of a non-linear system. They mention that both of these topics are compelling research directions for non-linear control theory.

### Nonlinear Feedback Design for Fixed-Time Stabilization of Linear Control Systems

The final paper that I chose was written by a single author, Andrey Polyakov. This topic was interesting to me because of the unorthodox sounding title. Most of the time, if there is non-linearity in a control problem, it is the system, which must be controlled. However, in this case, the systems that the author was solving were linear. In contrast, the feedback used to control the system was not linear.

The paper starts off by mentioning that many of the control methods are made for linear plants. The author then explains how linear control methods involve the use of polynomial feedback patterns that rely on stabilizing a play via the use of finite convergence time for a system into the region specified by the input. The author then shifts attention to a second kind of control that implements a 'sliding mode control algorithm'. They state that this method allows the system to have a set settling time independent of initial conditions of the system.

This paper also mentions that the theory presented works for both single-input single-output systems in addition to multiple-input multiple-output systems. Similar to the other two papers, this paper mentions that this control theory is robust, at least in regards to when the matching condition holds.

It is immeadiately noticable that this paper is shorter than the other two papers. In fact, this paper does not even have a conclusion section. I was also slightly, though, not by much, more familiar with the terms that were being used in this text. This is likely because this paper focused on linear systems with non-linear controllers instead of non-linear systems themselves.

## Possible Questions

1. Is there a gap between the contents in your papers and the material in ECE 541a?

   - There was most definitely a gap in the knowledge that I have about control
     theory and the knowledge that is present in these papers. Not only was I
     completely dumbfounded by all of the linear algebra that was contained in
     each paper, I was also barely able to conceptually understand the concepts
     that were being discussed. On the bright side, I was able to piece together
     the main points that were being made about how each piece of theory they
     presented is helpful to their respective fields.

2. Was there any similarity with how the papers were organized?

   - Each of the papers had an abstract, intro, and some had mini literature
     reviews. After that, they each went into mathematical proofs for their
     theorems and then had examples where their theory would apply. I could see
     these topics being presented as a highly specialized guest lecture in one
     of our classes.

3. Did the papers share any common references? Authors?

There were two authors among the papers that were common. The first author, Zhong-Ping Zhang was mentioned by two papers but the papers that were cited were not the same. However, the second author, Alessandro Astolfi, was mentioned a number of times and while there were also no identical citation to the papers. You can tell that he is a major contributor to the field of non-linear control theory.

   - Zhong-Ping Zhang | Studies non-linear control and dynamical networks.
     - Papers included: "Computational adaptive optimal control for
       continuous-time linear systems with completely unknown dynamics"
     - "Data-driven finite-horizon optimal control for linear time-varying
       discrete-time systems"
     - "Finite-time stabilization of nonlinear systems with parametric and
       dynamic uncertainties"
   - Alessandro Astolfi | Studies Control Theory and non-linear systems.
     - "Towards deterministic subspace identification for autonomous nonlinear
       systems"
     - "A geometric characterization of the persistence of excitation condition
       for the solutions of autonomous systems"
     - "Nonlinear and Adaptive Control With Applications"
     - "Dynamic approximate solutions of the HJ inequality and of the HJB
       equation for input-affine nonlinear systems"
     - "Optimal control for continuous-time non- linear systems based on a
       linear-like policy iteration"
     - "Homogeneous approximation, recursive observer and output feedback"

4. What research questions were addressed in the papers?

   - Each of the papers addressed robustness of their control theory. I think this is something worthy of note because, while our mathematical equations can equal anything with enough assumptions. At the end of the day, we are still engineers that must apply the knowledge in the theory that we think to the real world. This means that noise ridden signals must still be enough to control a system. So, even from a non-technical perspective, anyone can understand that the robustness of a controller is a critical consideration to make when designing a control theory method.

5. Which paper did you like? Why?

   - I liked the second paper the most, 'Data-Driven Control Stabilization Optimality and Control' the most because, while it was very technical, I was still able to gather many of the pieces. I think one of the most critical things that I picked up while reading this paper was the different approaches that exist for controlling a system. Specifically, the data-driven approach vs the system identification approach. We learned how to identify systems by assuming a system was second order and then looking at the impulse/step response. However, many realistic systems (and technically, all to an extent) are not time-invariant or linear. This means that using the data-driven approach to controlling a system is a valuable research topic to aid engineers in controlling arbitrary systems.

6. What questions arise from comparing and contrasting the papers?

7. Are you able to generate a new hypothesis or any new theories that need to be investigated?

8. Have these questions already been asked and answered by others, since the publication of your selected papers?

   - There's a pretty cool article, [The Informativity Approach: To Data-Driven Analysis and Control](https://ieeexplore.ieee.org/document/10317631), that is basically a compilation of the topics that are mentioned in this paper among others, that basically states that this research is great foundational work for future research.

9. Did this project identify other papers that you would read and study to further your research or inspire a new research direction?

10. What did you like about any or all of your papers?

11. What did you not like about any of the papers you selected?

- A lot of them suffer from the same problem that many technical papers do, they are very quick to throw many terms that could be considered jargon by non-engineers, and even other experts in the field. Especially at the early graduate/undergraduate level. The paper that best explained things in an understandable way was paper 2. However, I was a bit more comfortable reading paper 3 becuase of the fact that I already understand linear systems more than I understand non-linear systems. All of them mention MIMO systems, but non of them explain them. Granted, with any paper submitted to a journal like IEEE, you are expected to be an expert in the field already.

12. Did you feel some of the material in any of your papers was unclear or confusing?

    - Refer to all other questions.

13. Do you think the authors missed anything?

14. Have there been any corrections to any of the papers?

    - Yes, there have been revisions on some of the papers. Paper 2 had a revision from Feb 2020, after the initial manuscript submission from March 2019 and publication form December 2019.

15. Did their analysis and methodology seem justified?

16. Was the literature review in each paper sufficient?

17. Did any paper leave something out?

18. Would it be possible for the authors of your papers to have a debate?

    - Imagine the authors of your papers sitting around a table.
    - What conversation would that group have?
    - Would there be complementary arguments?
    - Would there be strong opinions and disagreement?
    - What would be the theme of the discussion?
    - How many viewpoints would exist?
    - Would the authors of one paper win the debate?

19. Was the process followed in each paper systematic?

20. Could the research be duplicated? Was the research transparent?

21. Did the paper contain words that were unfamiliar?

22. Did the paper contain words that are used in ECE 541a?

23. Did the papers do a good job defining new words or terms?

24. Did you have to locate definitions or meanings of new words or phrases on
    your own?

25. Is the work generalizable? Are the results in the paper very specific to a particular set or group of systems or can the concepts and ideas be extended to many different systems? Is the research in a paper a special case, does it work for extreme cases, or does it work for typical cases? Did the paper clearly state the limitations or constraints on their work? For example, was it clear when their approach could be applied to a given system?

26. Is this research novel (new) or does this research extend previous research, i.e., is the research a completely new development or is the research cumulative?

27. Were some paper abstracts “better” than others? What makes the abstract better? 

- The abstract from the third paper was not my favorite, I feel that it was not concise in the topics that were discussed by the paper. At least, the goal and impact of the paper was not as well defined as the other two papers. My favorite abstract of the three papers was the first paper, because that absract was very well defined. They give just enough information about the topics in the paper as well as the methods used to achieve their results (in this case, the Lyapunov Matrix Equation being used to create a linear like factorization of a system). In my opinion, an quality abstract is characterized by the ability for the text block to communicate what was done in a concise manner without loss of informational integrity.

28. Did the papers have a “hook” in the introduction that made you want to read the paper? How did they create the hook? Was the hook a particular problem? Was the hook the need for a better solution?

29. Did the introduction let the reader know what to expect in the rest of the paper?

30. What did you think of their literature review? Was it thorough? Did they do a good job of finding themes or topics in the papers they reviewed? Did they group or organize their referenced papers that shared common themes or topics?

31. Did the author’s provide some background on how their paper fits in with the existing literature?

32. Was is clear what the authors wanted the readers to take away from their paper?

33. Were the claims in the paper clear? Did they do a good job supporting their claims?

34. Were the results clearly stated and explained? How could the results section be improved in the papers?

35. Did their discussion follow logically from their results?

36. Was the conclusion effective at summarizing the paper?

37. Did the paper include opinion statements? If so, did the authors support their opinions with strong arguments?

38. What did you find interesting?

39. Was future research identified by each paper?

40. Did the paper provide descriptions or insights into what the next research steps should be? What are the next questions? What are the next steps?

41. Do you think any of your papers contained errors or misleading information?

42. Was the paper clearly written?

    - Each of these papers were written clearer than any paper that I've written, that's for sure. The most polished papers were papers 1 and 2 (one of which, is written by a heavily cited author). From a novice in the field, while difficult to undersand, I can see how an expert in the field would think that the papers contain the theories and proofs for them in a concise manner.

43. Do the introduction and conclusion sections of each paper provide the reader
    with a strong understanding of what was done in the paper?

    - Paper 1 definitely did for me. Paper 2 had was the middle of the pack. Unfotunately, paper 3 did not eveninclude a conclusion.

44. Was the paper painful to read? Or, was the paper interesting? Was the paper
    full of good ideas?

45. Would you recommend the paper to someone else, if they were wanting to learn
    more about the paper’s topic? If not, did this project make you aware of a
    better paper for learning about the topic?

46. What questions do you now have after studying these papers?

47. Given more time, would you pursue this topic further? If so, what would be
    your next steps? Are there other papers you would like to read? Would you
    like to formulate your own questions and pursue them with your own research?

48. If you would not pursue this topic, given more time, what topic or direction would you like to pursue?

    - I will not be writing a thesis for my AMP, I picked this topic because throughout all of my college career, we have focused on Homogeneous, that is, linear and time invariant systems. Taking a look at how people would solve non-linear systems gave me insight into the approach that en engineer must take to solve more complicatedproblems if the situation at hand requires it. With that being said, while I do not want to intensly study non-linear control theory, I still would like to learn a little bit more about non-homogeneous systems and as such, I feel the next topic I should peruse regarding control theory should be in regards to non-time invariant systems.
