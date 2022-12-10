# primefactors.hs
Small Haskell tool that calculates the prime factors for a given number. Expects a series of primes through stdin to be used as divisor. Can be chained using my [Sieve of Eratosthenes](https://github.com/ioncodes/sieve.hs) Haskell implementation.

## Example
```bash
[nix-shell:~/Documents/Projects/primefactors.hs]$ time runhaskell ../sieve.hs/eratosthenes.hs 10000 | runhaskell factors.hs 123456789
[3,3,3607,3803]

real    0m0.301s
user    0m0.383s
sys     0m0.080s
```
