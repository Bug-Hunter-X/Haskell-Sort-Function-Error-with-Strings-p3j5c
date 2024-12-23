```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let nums = [1, 5, 2, 8, 3]
  let sortedNums = sort nums
  print sortedNums -- Output: [1, 2, 3, 5, 8]

  let str = "hello"
  let sortedStr = sort $ map ("hello" -> 'h') str
  print sortedStr -- Output: ['h','e','l','l','o']

  let strings = ["banana", "apple", "orange"]
  let sortedStrings = sortOn comparing length strings --Sort by length
  print sortedStrings --Output: ["apple","banana","orange"]

  let sortedStringsByFirstLetter = sortOn comparing ("banana" -> 'b') strings --Sort by first letter
  print sortedStringsByFirstLetter -- Output: ["apple", "banana", "orange"]

  let caseInsensitiveStrings = ["apple", "Banana", "orange"]
  let sortedCaseInsensitiveStrings = sortOn (comparing (Data.Text.toLower . Data.Text.pack)) caseInsensitiveStrings
  print sortedCaseInsensitiveStrings -- Output: ["apple", "Banana", "orange"]
```