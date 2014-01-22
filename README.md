String Calculator
=================

Dan Tripp's mesmerizing String Calculator: a response to a code challenge.

## Usage:

`StringCalculator.add("1,2")` positive numbers, separated by a comma

`StringCalculator.add("//;\n1;2;3")` to specify a different delimiter

---

## Setup
1. Create a `public` repository in your github account
2. Follow the test instructions below.

## Instructions

 1. Create a simple String calculator with a method Add(numbers) that takes a string
   - The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will 
     return 0) for example ```""``` or ```"1"``` or ```"1,2"```
   - Start with the simplest test case of an empty string and move to 1 and two numbers
 2. Allow the Add method to handle an unknown amount of numbers
 3. Allow the Add method to handle new lines between numbers (instead of commas).
   - the following input is ok: ```1\n2,3``` (will equal 6)
   - the following input is NOT ok: ```1,\n```
   - Make sure you only test for correct inputs. there is no need to test for invalid inputs
 4. Allow the Add method to handle a different delimiter:
   - to change a delimiter, the beginning of the string will contain a separate line that looks like 
     this: ```//[delimiter]\n[numbers…]``` for example ```//;\n1;2``` should return three where the 
     default delimiter is ```;``` .
   - the first line is optional. all existing scenarios should still be supported
 5. Calling Add with a negative number will throw an exception “negatives not allowed” – and 
    the negative that was passed.if there are multiple negatives, show all of them in the exception message