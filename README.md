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

With these bindings (and all the non-custom bound commands in Emacs), I'm very productive. I also make heavy use of Dired whenever I can - such a wonderful tool (my favorite combination is to use `% g`, `t` and `k`, you should try it out some day. Type `g` if you get afraid and think your files were deleted (they were not).)

Apart from the few custom keybindings above, I also have what I also think is the bare minimum set of settings/flags that makes Emacs work better than the default:

 - C basic offset set to 3 spaces.
 - Do NOT use tab characters for indentation, uses spaces instead.
 - Turn off menu bar (not really necessary, but gives that clean and minimal look)
 - Turn off tool bar (as above)
 - Turn off deleting the marked region with a keypress (probably not for newcomers). I like to cut it explicitly, or use M-x delete-region if I for some reason don't want to mess upp the kill ring.
 - Show matching parentheses/brackets
 - Do not delete files, move to trash instead (you have the disk space today to do this, I promise)
 - Turn off dired handling of drag and dropped files from outside Emacs.
 - Put text on the kill-ring ("clipboard") when the mouse is used to select text.
 - Hide the startup screen.
 - Turn on winner mode for better window configuration handling.
 - Enable M-x erase-buffer, since it is a useful command
 - Enable scroll-left. Useful when you don't want lines to be wrapped and still be able to see long lines of text.
 
Well, that's it. Works for me 80% of the time. Of course, after using Emacs for a few days or so with this configuration I often start to add other small tweaks, tips and tricks to it. I often install Smex, for example, if I have a modern Emacs with a working M-x list-packages. If I'm using a lot of macros, I put record and playback commands on f7 and f8 (yes, I know, they are on f3 and f4 by default, but I started using Emacs before they were there, or before I knew about them...)

If you want to try it out, just copy the content of barebones.el into your .emacs or init.el file (make a backup of your current files first) and restart Emacs.
