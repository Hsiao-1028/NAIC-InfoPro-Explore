# Literature Gaps

## Two Main Approaches

### 1. Frontier Methods (Cummins & Weiss)

**Core question:** "How far are you from the best-practice frontier?"

- **SFA (Stochastic Frontier Analysis):** Parametric; handles random shocks via distributional assumptions.
- **DEA (Data Envelopment Analysis):** Non-parametric; cannot handle random shocks; more commonly used.
- Output: a *distance to frontier* measure.
- **Best suited for:** ranking firm efficiency, testing for economies of scale, comparing organizational forms (e.g., mutual vs. stock).

### 2. Olley–Pakes (1996) Style Production-Function Estimation

**Core question:** "After controlling for input-endogeneity bias, what does productivity look like?"

- Examines how productivity shapes investment, entry, and exit decisions.
- Requires specifying the production function via an explicit input–output structure → enables finer decomposition of how each input converts into output.
- **Best suited for:**
  - How firms transform labor, capital, … into output, and how policy affects that transformation.
  - *Example:* After adopting AI, what drove the efficiency gain — input mix? Productivity level? Production-function shape? Exit of low-performers? (→ production elasticities)
  - *Example:* Did aggregate productivity rise because bad firms exited, all firms improved, or M&A reshaped the market? (→ Olley–Pakes decomposition)
  - *Example:* Markups and market power via production elasticities.

### Modeling Difference

They both assumes the production form, or take a log form: 
$$ Y_{i} = f(X_{i}, \beta) + \epsilon_{i}$$

While the difference lies in the specific form of the error term:
- Frontier (SFA): $\epsilon_{i} = \nu_{i}  - \mu_i $; 
    - f(.) is the most efficient frontier, $\nu_i$ is the error term, $\mu_i$ is how inefficient the firm $i$ is. 
    - the literature focus on the distribution of $\mu_i$, while $f(\cdot)$ and $\beta_i$ are more secondary.
    - usually estimated via MLE. On the other hand, DEA estimates non-parametrically.
- OP: $\epsilon_{i} = \omega_{i}  + \eta_i $; 
    - $\omega_i$ is the productivity, observed for firm but not us, causing the estimation bias in $\hat \beta$ in $f(\cdot, \beta)$.
        - causing endogeneous problem and selection (exit)
    - $\eta_i$ is the unobs for both firm and us, not a bit problem.
    - $\beta$ is the elasticity: how input helps output; Both $\beta$ and $\omega_i$ are the focus of this literature! 

### Why Frontier Dominates Insurance Literature (over OP-style)

1. The field cares more about topics naturally addressed by frontier methods — cost efficiency, scope economies, monitoring, etc.
2. It is harder to define *output* and write down a credible **production function** for insurers.

---

## Defining Inputs & Outputs in Insurance

Three commonly used approaches:

### Financial Intermediation Approach

- Policyholders hand funds (premiums / reserves) to insurers, who invest and later pay claims.
- **Critique (CW 2013):** Ignores other services insurers simultaneously provide — underwriting, risk pooling, claims handling.

### User-Cost Approach

- If a financial product's return exceeds the opportunity cost of funds → **output**; if it falls below → **input**.
- **Critique (CW 2013):** Insurance policies bundle many services and price them together, making separation difficult.

### (Modified) Value-Added Approach

Focuses on activities that provide substantial services and create significant added value.

- **Main outputs:**
  - Underwriting services (e.g., earned premiums, policies written)
  - Claims services (e.g., incurred losses, claims handled)
  - Investment management services (e.g., invested assets)
- **Main inputs:**
  - Labor, materials & business services, equity capital
- **Input prices:**
  - Wage rate, business-services deflator, expected market return (for capital)

---

## Additional Notes

- **Ty:** A traditional measure of insurer performance; the most efficient firms are less likely to become insolvent.
- **Common research topics:** Organizational form, mergers & acquisitions, distribution systems, market structure.
