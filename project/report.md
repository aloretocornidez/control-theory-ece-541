# 541 Focused Literature Report

Name: Alan Manuel Loreto Cornídez

Date Due: December 6th

Instructor: Dr. Hal Tharp

## Introduction

## Paper Summaries

### Linear-Like Policy Iteration Based Optimal Control For Continuous-Time Nonlinear Systems

The first paper, "Linear-Like Policy Iteration Based Optimal Control For
Continuous-Time Nonlinear Systems", which will now pe referred to as "Paper 1",
written by Adnan Tahirović and Alessandro Astolfi, proposes a strategy to create
controllers for non-linear systems in an optimal, asymptotically exact, linear
like method. This goal is achieved by replacing the Hamilton-Jacobian-Bellman
(HJB) partial differential equation (PDE) with the Lyapunov equation, sometimes
referred to as the Stein equation.

Tahirović and Astolfi state that multiple methods to solve the HJB PDE have been
presented. In addition to being difficult, if not impossible to solve the HJB
PDE, the methods presented have a variety of assumptions as well as a
significant cost to the optimality of the solution. The authors mention that the
use of the Pontryagin maximum principle addresses the problem for optimality of
the solution of the system. They also mention that the use of direct
discretization of the system is used to solve optimal control problems. The two
methods used in conjunction have been used to reliably and quickly solve systems
using computer programs and calculators. Because of this already present
solution, they justify their efforts for using the HJB equation to provide the
unique optimal solution for the entire statespace of the system, instead of a
optimal solution for a linearization of a non-linear system.

After giving this justification, the authors present a few techniques that are
used to solve the HJB equation. They present the first class of techniques
presented in 1983 for the Viscosity solutions of Hamilton-Jacobi equations. The
methods referenced require that the solution be continous, by not necessarily
differtiable. However, this method requires the discretization of the system,
which creates an exponentially more expensive solution as the state space of the
system increases. The second class of techniques referenced by Tahirović and
Astolfi are based on the principle of model-based reinforcement learning with
policy-iteration (PI) algorithms. The also mention that Galerkin approximations
have been used to approximate solutions for a control system when the two
aforementioned methods are implemented. They mention a third class of techniques
that reduce the HJB to the state dependent Riccati equation (SDRE) when the
control system is linearized near an equilibrium point at the cost of quadratic
form of the system being compromised. This, of course, means that the aquirred
solution has no guarentee of stability.

Finally, they mention that this paper provides a theoretical extension of their
previous work. The method that they propose works for affine contrinuous-time
nonlinear systems. Their method is based on the PI paradigm combined with the
linear-like factorization approach mentioned in the last of the previously
mentioned class of techniques to replace the HJB with the state-dependent
Lyapunov equation (SDLE). This allows the control system to be soved in an
asymptotically exact, but using linear-like methods to arrive to the solution.
The solution rendered by their method only workds if the cost for that solution
has a quadratic form. If this is not the case, the authors state that the
optimal solution is suggested to be in the vicinity of the calculated soluton.

### Formulas for Data-Driven Control: Stabilization, Optimzality, and Robustnes

### Nonlinear Feedback Design for Fixed-Time Stabilization of Linear Control Systems

## Possible Questions

1. Is there a gap between the contents in your papers and the material in ECE
   541a?

2. Was there any similarity with how the papers were organized?

3. Did the papers share any common references? Authors?

4. What research questions were addressed in the papers?

5. Which paper did you like? Why?

6. What questions arise from comparing and contrasting the papers?

7. Are you able to generate a new hypothesis or any new theories that need to be
   investigated?

8. Have these questions already been asked and answered by others, since the
   publication of your selected papers?

9. Did this project identify other papers that you would read and study to
   further your research or inspire a new research direction?

10. What did you like about any or all of your papers?

11. What did you not like about any of the papers you selected?

12. Did you feel some of the material in any of your papers was unclear or
    confusing?

13. Do you think the authors missed anything?

14. Have there been any corrections to any of the papers?

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

25. Is the work generalizable? Are the results in the paper very specific to a
    particular set or group of systems or can the concepts and ideas be extended
    to many different systems? Is the research in a paper a special case, does
    it work for extreme cases, or does it work for typical cases? Did the paper
    clearly state the limitations or constraints on their work? For example, was
    it clear when their approach could be applied to a given system?

26. Is this research novel (new) or does this research extend previous research,
    i.e., is the research a completely new development or is the research
    cumulative?

27. Were some paper abstracts “better” than others? What makes the abstract
    better?

28. Did the papers have a “hook” in the introduction that made you want to read
    the paper? How did they create the hook? Was the hook a particular problem?
    Was the hook the need for a better solution?

29. Did the introduction let the reader know what to expect in the rest of the
    paper?

30. What did you think of their literature review? Was it thorough? Did they do
    a good job of finding themes or topics in the papers they reviewed? Did they
    group or organize their referenced papers that shared common themes or
    topics?

31. Did the author’s provide some background on how their paper fits in with the
    existing literature?

32. Was is clear what the authors wanted the readers to take away from their
    paper?

33. Were the claims in the paper clear? Did they do a good job supporting their
    claims?

34. Were the results clearly stated and explained? How could the results section
    be improved in the papers?

35. Did their discussion follow logically from their results?

36. Was the conclusion effective at summarizing the paper?

37. Did the paper include opinion statements? If so, did the authors support
    their opinions with strong arguments?

38. What did you find interesting?

39. Was future research identified by each paper?

40. Did the paper provide descriptions or insights into what the next research
    steps should be? What are the next questions? What are the next steps?

41. Do you think any of your papers contained errors or misleading information?

42. Was the paper clearly written?

43. Do the introduction and conclusion sections of each paper provide the reader
    with a strong understanding of what was done in the paper?

44. Was the paper painful to read? Or, was the paper interesting? Was the paper
    full of good ideas?

45. Would you recommend the paper to someone else, if they were wanting to learn
    more about the paper’s topic? If not, did this project make you aware of a
    better paper for learning about the topic?

46. What questions do you now have after studying these papers?

47. Given more time, would you pursue this topic further? If so, what would be
    your next steps? Are there other papers you would like to read? Would you
    like to formulate your own questions and pursue them with your own research?

48. If you would not pursue this topic, given more time, what topic or direction
    would you like to pursue?
