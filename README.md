# Randy

A little library for easily producing random data using Ruby's built-in `rand` function.

## Installation

Add this line to your application's Gemfile:

    gem 'randy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randy

## Usage

Currently **randy** can produce two kinds of random data (in theory this will change).

### Strings

The original main purpose of this library is to produce random strings easily.

For example, to produce a random 10-character string:

    # Example output: BASWCEV3TQ
    Randy.string(10)

By default, the result string will comprise characters from the digits 0-9 and the English alphabet.

This can be changed by specifying the characters to be used:
    
    # Example output: baaabbabac
    Randy.string(10, "abc")

### Numbers

It's already easy to produce random numbers using Ruby. However, **randy** makes it *even easier*.

To produce a random *integer*, just specify a range:

    # Will include some number between 1 and 10
    Randy.integer(1..10)

The result will be consistent with how Ruby ranges work; that is, an inclusive range (`..`) will potentially include the upper bound while an exclusive range (`...`) will not.

Admittedly, the above is quite trivial to implement by hand, e.g., with `1 + rand(10)`. Think of it simply as a nicer interface to `rand`.

The same functionality is also exposed to decimal values:

    Randy.decimal((1.4)..(6.2))
