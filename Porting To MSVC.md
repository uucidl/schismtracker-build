# Rationale for MSVC porting effort

As user of software platforms I have no loyalty: I moved from DOS to Windows to Linux to MacOSX.

As a software user, I care about my data (music, text, pictures, ...) more than I care about software.

I'd like software however to be portable, as insurance against platform changes. This goes with preventing a certain platform lock-in that happens when a software depends on a system and software platform.

Schismtracker is already well architected with respect to its system layer and provenly portable. I'd like just to do the next step that allows windows developers to use their native tools.

Basically, as a windows developer (I'm one professionally but I have zero loyalty to OS and have used and am using linux/osx/windows in equal part) I'd like to save on installing `mingw32` to contribute and build schismtracker. I think a large number of native pro and amateur developers on that platform would not normally have mingw32 around.

Schismtracker's source code just needs a little bit of sys specific types and shims where it assumes that it is built against a posix/bsd platform.

The main advantages:
- removing the need for installing mingw32,
- all tools (compilers, debuggers) remain the ones that windows developers are used to
- less dependence on posix/bsd

The main advantages:
- removing the need for installing mingw32,
- all tools (compilers, debuggers) remain the ones that windows developers are used to

This removes hurdles that might have up to now prevented some contributions from these developers.


To give you an example, in a recent porting effort I stumbled upon a library that was using the `tsearch.h` BSD include. This is an implementation of a binary search tree that exists on many BSD platforms. I have no problem with that in principle, since it saves on lines of code for something quite usual.

However as soon as you port your program on platform w/o tsearch, you're back to implementing it yourself (or shipping some ready made implementation).. which introduces the complexity of having various implementations of the same thing that are not easily tested by all contributors to the software.