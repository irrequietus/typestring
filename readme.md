# Strings as C++ types for use in template parameter lists.

## What this is all about
Template metaprogramming is for those who enjoy using a *pure, non-strict,
functional programming language, with pattern matching within C++*. If there is
anything truly worth in the language that's the completely serendipitous
emergence of this important idiom to the point of it being a core practice for
lots of really useful and advanced code. One thing that is currently missing is
having the opportunity to **seamlessly define strings as types in situ within a
template parameter list as a language feature.**

I have been using various personal implementations in my own code for this,
though I think that it is such a fundamental construct it should also exist in
stand-alone mode. *This is a fast compile-time wise, single-header,
no-dependencies, standard-compliant C++ library offering a seamless way to enjoy
compile time strings as individual, distinct types.*
```(cpp)
 typedef typestring_is("Hello!") test; /* irqus::typestring<'H','e','l','l','o','!'> */
```
If you don't realize what this is for, by now, then it is probably not meant for
you. At some point, perhaps the language does get some decent language features
doing such stuff in one go; the way this works is actually much faster than
expected given the few lines of implementation in `typestring.hh`.

## Usage

You only need to include the file `typestring.hh` in your code, after which, you
will be able to use `typestring_is` easily for any kind of `char` encoded string
you fancy, including ASCII art. The default maximum length of the strings
allowed is 64, but you can use any power of `2` within `0` (1) to `10` (1024)
by  enabling `-DUSE_TYPESTRING=<power of 2>` prior to compilation. The actual
procedure behind creating these **compile-time strings as types** for a template
parameter list allows for far greater numbers, but you will just segfault your
compiler, regardless of what instantiation depth you specify.

## A few things to remember

 * Will work with *standard* **C++11**, **C++14** and above as it is,
 **no dependencies involved at all**.
 * Completely independent of *compile-time constexpr metaprogramming string
 literals*; you have **individual strings as individual types to use as type
 parameters**.
 * Has been tested with `clang++` and `g++`, use as recent versions as possible
 for `C++11/C++14` compliance.
 * A few handy member functions have been added in `typestring` should you need
 to play with it outside its intended use.
 * Code could be made to do far more, but the fundamental construct is what
 matters, I have another [project](https://github.com/irrequietus/clause) for
 such things.
 * Always remember to have fun first and foremost.
 * License is [Mozilla Public Licence 2.0](https://www.mozilla.org/MPL/2.0/)
 because it suits all metaprogramming best.
 
