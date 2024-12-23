# Haskell Sort Function with Strings: A Common Error

This repository demonstrates a common error encountered when using the `sort` function in Haskell with string data.  The `sort` function requires an `Ord` instance, meaning the data type must implement a comparison operation. While numbers have a natural ordering, strings don't unless you provide an explicit ordering method.

The `bug.hs` file contains code exhibiting this error; the `bugSolution.hs` demonstrates how to correctly sort strings in Haskell.