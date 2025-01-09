# Ada Integer Multiplication Function with Potential Errors

This repository demonstrates a simple Ada program designed to multiply two integers using a function. It highlights potential issues and solutions related to type checking and error handling.

## Bug Description
The provided Ada code multiplies two integers using a function. While functionally correct, the code lacks robust error handling which can lead to runtime issues if the input values exceed the range of `Integer`. 

## Solution
The solution implements more robust error handling by checking for potential overflow before performing the multiplication. It also uses exception handling to gracefully manage situations where the multiplication results in an error.

## How to Run
This program requires an Ada compiler (such as GNAT). Compile and run the provided Ada files.