# Pattern Recognition, assignment 1

Bayesian decision theory and classification. First assignment of the Pattern Recognition course at the Democritus University of Thrace (Fall 2023).

| # | Topic | Code |
|---|---|---|
| 1 | Classifying emails as normal, spam or malicious with the Bayes decision rule, and the total classification error with and without known class probabilities | |
| 2 | Two classes with a 2×2 cost matrix and Gaussian likelihoods. The decision boundary is derived on paper and the total cost is estimated with a Monte Carlo simulation | [`code/Askisi 2/`](code/Askisi%202/protipa1_2b.m) |
| 3 | Discriminant functions for Gaussian classes (Gaussian discriminant, Euclidean and Mahalanobis distance) and maximum-likelihood estimation on three Gaussian classes | [`code/Askisi 3/`](code/Askisi%203/protipa1_3a.m) |
| 4 | Minimax decision when the prior is unknown | |
| 5 | Recursive Bayesian estimation of the probability θ of heads, starting from the prior p(θ) ∝ θ³(1−θ) and updating it over 10 tosses | [`code/Askisi 5/`](code/Askisi%205/protipa1_5b.m) |

The solutions are in [`report/Report_HW01.pdf`](report/Report_HW01.pdf), in Greek. The MATLAB scripts cover the parts that need computation.

## Repository structure

```
.
├── report/Report_HW01.pdf
└── code/
    ├── Askisi 2/protipa1_2b.m
    ├── Askisi 3/protipa1_3a.m
    └── Askisi 5/protipa1_5b.m
```

## Running the code

Each script runs on its own in MATLAB and needs no data files.

```matlab
cd 'code/Askisi 2'
protipa1_2b        % Monte Carlo simulation, prints the total cost

cd '../Askisi 3'
protipa1_3a        % discriminantFunction, euclideanDistance, mahalanobisDistance

cd '../Askisi 5'
protipa1_5b        % posterior p(θ | D) after 1, 5 and 10 tosses
```

## License

MIT, see [LICENSE](LICENSE).

## Author

[Dimitrios Anastasoudis](https://github.com/anastasoudis), [LinkedIn](https://linkedin.com/in/anastasoudis)
