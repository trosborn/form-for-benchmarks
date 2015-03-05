# form-for-benchmarks
Benchmarks for PR #18963 in Rails

Data I got running on my oldish Macbook Air:

Master: array.length == 1
                        59.104k i/100ms
PR: array.length == 1
                        34.926k i/100ms
-------------------------------------------------
Master: array.length == 1
                          2.377M (±11.5%) i/s -     11.703M
PR: array.length == 1
                        818.100k (± 6.4%) i/s -      4.086M

Comparison:
Master: array.length == 1:  2376619.3 i/s
PR: array.length == 1:   818100.2 i/s - 2.91x slower

Calculating -------------------------------------
Master: array.length == 2
                        58.797k i/100ms
PR: array.length == 2
                        32.940k i/100ms
-------------------------------------------------
Master: array.length == 2
                          2.362M (±10.5%) i/s -     11.701M
PR: array.length == 2
                        691.621k (± 6.0%) i/s -      3.459M

Comparison:
Master: array.length == 2:  2361830.4 i/s
PR: array.length == 2:   691620.6 i/s - 3.41x slower

Calculating -------------------------------------
Master: array.length == 3
                        59.808k i/100ms
PR: array.length == 3
                        32.057k i/100ms
-------------------------------------------------
Master: array.length == 3
                          2.336M (±11.9%) i/s -     11.543M
PR: array.length == 3
                        592.405k (± 9.7%) i/s -      2.949M

Comparison:
Master: array.length == 3:  2335611.5 i/s
PR: array.length == 3:   592404.6 i/s - 3.94x slower

Calculating -------------------------------------
Master: array.length == 4
                        31.605k i/100ms
PR: array.length == 4
                        22.681k i/100ms
-------------------------------------------------
Master: array.length == 4
                          1.273M (±30.4%) i/s -      5.721M
PR: array.length == 4
                        404.193k (±12.7%) i/s -      1.996M

Comparison:
Master: array.length == 4:  1273117.6 i/s
PR: array.length == 4:   404192.6 i/s - 3.15x slower

Calculating -------------------------------------
Master: array.length == 5
                        42.467k i/100ms
PR: array.length == 5
                        24.078k i/100ms
-------------------------------------------------
Master: array.length == 5
                          1.471M (±17.8%) i/s -      7.134M
PR: array.length == 5
                        436.298k (± 9.7%) i/s -      2.167M

Comparison:
Master: array.length == 5:  1471370.2 i/s
PR: array.length == 5:   436297.9 i/s - 3.37x slower
