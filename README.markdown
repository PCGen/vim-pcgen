pcgen.vim
============

This is a VIM helper to edit oldskool PCGen files. It allows you to convert between multi-line object files and tab-based object files and back by pressing <F2> and <F3>.

usage
=====

1. Use <F2> to convert from single-line object file to multi-line
2. Use <F3> to convert back
3. Use <F4> while editing to insert `PREABILITY:1,CATEGORY=Special Ability,`.


installation
============

Install [Pathogen.vim](https://github.com/tpope/vim-pathogen "Pathogen.vim"):

Then run:

  cd ~/.vim/bundle/
  git clone https://github.com/pcgen/vim-pcgen.git

changelog
=========

2012-09-28

 * On buffer write, convert back to tab-based files.
 * Keep the spaces that are added by prettylst at the end of lines when converting to multi-line objects. This keeps the diff smaller when converting back to tab-based files on write-out or when converting back using <F3>

2012-09-26

 * Add protection against converting tab-based files to multi-line multiple times.
 * Add distinct options for multi-line mode and tab-based mode. (autoindent in multi-line)

todo
====

Add options for auto-reverting to tab-based lines on write-out.
Add options for keeping multible tabs at the end of the line on reverting to tab-based.

