# Pattern Recognition — Assignment 1

A problem set on **Bayesian decision theory and classification**, completed during the Pattern Recognition course at Democritus University of Thrace (Fall 2023).

## Problem set overview

Five exercises spanning analytical Bayes reasoning, parameter estimation, and computational simulation.

| # | Topic | Type | Code |
|---|---|---|---|
| 1 | Email classification (Normal / Spam / Malicious) via the Bayes decision rule; total classification error with and without prior knowledge of class probabilities | Analytical | — |
| 2 | Two-class problem with a 2×2 cost matrix and Gaussian likelihoods; analytical decision boundary + Monte Carlo simulation for empirical cost estimation | Analytical + MATLAB | [`code/Askisi 2/`](code/Askisi%202/protipa1_2b.m) |
| 3 | Implementing discriminant functions for multivariate Gaussian classes — Gaussian g(x), Euclidean distance, Mahalanobis distance — and maximum-likelihood parameter estimation on a 3-class Gaussian dataset | Analytical + MATLAB | [`code/Askisi 3/`](code/Askisi%203/protipa1_3a.m) |
| 4 | Minimax decision boundaries when the prior is unknown; effect of a mis-specified prior on the probability of error | Analytical | — |
| 5 | Recursive Bayesian estimation: posterior over a coin-flip parameter θ with a Beta(4, 1) prior, updated sequentially across 10 tosses | Analytical + MATLAB | [`code/Askisi 5/`](code/Askisi%205/protipa1_5b.m) |

## Repository structure

```
.
├── report/Report_HW01.pdf    # Solutions, derivations, and discussion (Greek)
└── code/                     # MATLAB implementations of the computational parts
    ├── Askisi 2/protipa1_2b.m
    ├── Askisi 3/protipa1_3a.m
    └── Askisi 5/protipa1_5b.m
```

The report is in Greek and embeds the original problem statement before each answer, so the assignment context is preserved without needing a separate brief. The repository structure, README, and code comments below are in English.

## Running the code

MATLAB R2022a or newer. Each script is self-contained — no external data or toolboxes required.

```matlab
cd 'code/Askisi 2'
protipa1_2b        % Monte Carlo simulation, prints total cost

cd '../Askisi 3'
protipa1_3a        % defines discriminantFunction, euclideanDistance, mahalanobisDistance

cd '../Askisi 5'
protipa1_5b        % plots posterior p(θ | D) at k = 1, 5, 10
```

## Course

Pattern Recognition (Αναγνώριση Προτύπων) — Department of Electrical & Computer Engineering, Democritus University of Thrace. Fall 2023.

## License

[MIT](LICENSE) — shared as-is for educational reference.

## Author

[Dimitrios Anastasoudis](https://github.com/anastasoudis) · [LinkedIn](https://linkedin.com/in/anastasoudis)
