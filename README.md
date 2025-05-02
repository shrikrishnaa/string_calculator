# String Calculator

This is a Ruby implementation of the **String Calculator**, done step-by-step using Test-Driven Development (TDD) with RSpec.

## Problem Statement

Implement a method `add(string)` which takes a string of numbers separated by delimiters and returns their sum.

## Features Implemented

- Returns 0 for an empty string
- Returns the number itself if only one number is given
- Handles any number of comma-separated numbers
- Supports newlines (`\n`) as delimiters
- Allows custom single-character delimiters (ex., `//;\n1;2`)
- Raises an error when negative numbers are passed and shows all of them

## Tech Stack

- Language: Ruby
- Testing: RSpec