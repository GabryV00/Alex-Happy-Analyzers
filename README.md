# Alex-Happy-Analyzers
* **Alex** is a tool for generating lexical analysers in Haskell. It takes a description of tokens based on regular expressions and generates a Haskell module containing code for scanning text efficiently. It is similar to the tool lex or flex for C/C++.
* **Happy** is a parser generator for Haskell. Given a grammar specification in BNF, Happy generates Haskell code to parse the grammar. Happy works in a similar way to the yacc tool for C.

## Content of the repo
* **Alex 5**: Selects character strings in a text file that represent a multiple of four, in the usual decimal notation. Only numbers that are multiples of 4 are printed out, separated by a space, the rest of the text is eliminated. The divisibility check is implemented using proper regular expressions, and not the division-remainder operation.
* **Alex 8**: Recognizes strings of digits and characters, which represent numbers in one of the following formats:
  * Integers: string of decimal digits, possibly preceded by the sign (+/-)
  * Hexadecimal numbers: string of hexadecimal digits (0-9, a-f, A-F) preceded by the sequence "0x", or a string of hexadecimal digits followed by 'H'.
  * Octal numbers: string of octal digits (0-7) preceded by the sequence "0o", or a string of octal digits followed by 'O'.
* **Happy 5**: contains a lexical analyzer and a syntax analyzer to recognize a fragment of the Java language formed by:
  * Identifiers
  * Numerical constants
  * Assignment = or assignment with increment +=
  * if else
  * while loop
  * separators ; and blocks { }
  
  The parser returns the tree of the syntactic structure of the command received as input.
* **Happy 8**: contains a lexical analyzer and a syntax analyzer to recognize sequences of expressions in Scheme language formed by:
  * Identifiers
  * Integer numbers
  * Arithmetic operations: +, *, -
  * Equality test: =
  * The let and case functions

  The parser returns the parse trees of the received expressions.
