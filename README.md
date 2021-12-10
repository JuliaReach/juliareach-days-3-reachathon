# JuliaReach & JuliaIntervals Days 3: Reachathon

## What?

In the spirit of a [Hackathon](https://en.wikipedia.org/wiki/Hackathon), our Reachathon is allocated to discuss and implement exploratory solutions to programming tasks related to the workshop.

Every contribution and initiative counts, from first-time contributors seeking guidance in ways to contribute to JuliaReach and JuliaIntervals packages, to developments of more advanced research topics or tools proposed in the Challenge problems session the first day of the workshop.

## Challenge Problem 1 by Raktim Bhattacharya

**Verification of Flight Control Algorithms Using Reachability Analysis.** Aircraft manufacturers have reached a high level of expertise and experience in flight control law design. The current design and analysis techniques applied in industry enable flight control engineers to address virtually any realistic design challenge. However, the development of flight control laws from concept to validation is a very complex, multi-disciplinary task, and the many problems that have to be solved make it a costly and lengthy process. The certification or air-worthiness assessment can be seen as the final step of the flight control system design, which takes place when a mature controller design is available and is ready for flight tests. In the certification or clearance process, which includes verification and validation, it has to be proven that the flight control laws have been designed such that the aircraft is safe to fly throughout the whole flight envelope, under all parameter variability and failure conditions. The role of the certification process is to demonstrate, via exhaustive analyses, that a catalogue of selected criteria expressing stability and handling requirements is fulfilled. In this talk we will present how reachability analysis can be a viable approach for flight control certification.

## Challenge Problem 2 by Arvind Adimoolam

**Platoon of unicycle vehicles.** We consider a platoon of unicycle vehicles where the i-th vehicle follows the (i-1)-th and the relative displacements between the vehicles are controlled by a state-dependent feedback. The challenge is to verify a time-dependent safety constraint on the lateral distance between the vehicles as well as a safety bound on the horizontal displacements.	

## Challenge Problem 3 by Roberto Rocchetta

**Robust control problem by scenario optimization.** In this challenge, we wish to prescribe a robust controller design that maximizes the probability of satisfactory performance (reliability) of a two-body spring system. An optimized controller must satisfy three reliability requirements, i.e., it must guarantee system stability, fast return to equilibrium (setting time), and low energy consumption (control effort). Note that stability, setting time and control effort are competitive requirements and, thus, a controller that minimizes the failure probability for one of the requirements inevitably increases the chance of failing the others. We provide samples and a numerical model for the system and the controller. The data and model must be used for the design evaluation and to characterize the uncertainty response of the system. Note that only a few samples are available to solve this problem, further complicating the uncertainty quantification and reliability assessment tasks.	


## Challenge Problem 4 by Jorge Pérez Zerpa

**A nonlinear truss structural dynamics problem using reachability analysis.** In this challenge, a simple truss-structure linear/nonlinear dynamics problem will be presented, where in the nonlinear case, large displacements are considered. Basic Finite Element Method and Solid Dynamics concepts will be exposed, as well as the gold-standard numerical integration techniques. The recent application of Reachability Analysis to the linear case will be recalled. The numerical results for the linear case using numerical integration and reachability will be obtained. Finally the nonlinear case problem will be clearly posed allowing to discuss possible novel approaches using reachability analysis.

## Challenge Problem 5 by Niklas Kochdumper

**Polynomial Zonotopes in Julia.** For reachability of nonlinear differential equations, the non-convex set representation known as polynomial zonotopes has proved to be very competitive with respect to other approaches. Currently, polynomial zonotopes are only available in the Matlab tool CORA. This challenge consists of implementing sparse polynomial zonotopes and set operations in the Julia library LazySets.jl. This will serve as a solid groundwork to building reachability methods in the future.	
