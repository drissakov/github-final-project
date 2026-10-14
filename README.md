# Simple Interest Calculator

A Bash command-line calculator that computes simple interest from the principal amount, annual interest rate, and time in years.

## Inputs

- **Principal (P):** the initial amount of money.
- **Annual rate (R):** the annual interest rate as a percentage (for example, enter `5` for 5%).
- **Time in years (T):** the duration in years.

Use non-negative numbers. Decimal values are supported; use a period as the decimal separator.

## Formula

```text
Simple Interest = (P * R * T) / 100
```

The result is the interest earned or owed, excluding the original principal. For example, a principal of 1000, an annual rate of 5%, and a time of 2 years produce simple interest of 100.

## How to run

You need Bash and `awk`, available in typical Linux, macOS, and Git Bash environments.

1. Clone the repository and open its directory:

   ```bash
   git clone https://github.com/drissakov/github-final-project.git
   cd github-final-project
   ```

2. Run the script:

   ```bash
   bash simple-interest.sh
   ```

3. Enter the principal, annual interest rate, and time in years when prompted. The script displays the simple interest rounded to two decimal places.
