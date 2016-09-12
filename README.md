My .emacs files
========

This repository contains some .emacs / init.el variants that I like to use.

barbones.el
=========

This version of my .emacs file contains the bare minimum that I need when I install Emacs on a new system the first time, to be used temporarily or as a basic start, to grow later.

List of custom keys in this setup:

 - f1 - Switch to previous buffer. Think Alt-Tab in your OS.
 - f2 - Switch to the next window. Useful when you split the window or when Emacs does it for you (help buffers and others)
 - f3 - Switch to another buffer, with completion
 - f5 - Kill current buffer if it is saved
 - f9 - Toogle truncation of long lines on and off.

The few custom keybindings might seem strange to people and there is no particular logic in them apart from being very short and quick to type. Apart from typing, modifying text, and saving, the f1, f2 and f3 keys cover a huge part of what I do in Emacs, that is: switch to the previous buffer (very common for me in different workflows), switch to other window and switch to some other buffer with completion. The last binding here, f3, on my full Emacs setup, has a very complicated configuration of the good old anything.el (yup, I haven't switched to Helm yet...) However, iswitchb-buffer (or other modern versions) is good enough for most scenarios. f5 to kill buffer (no questions asked if the buffer is saved) is also often handy, and f9 to toggle truncation of long lines is something I used a lot.

