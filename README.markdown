pcgen.vim
============

This is a VIM helper to edit oldskool PCGen files. It allows you to convert between multi-line object files and single-line object files and back by pressing <F2> and <F3>.

prerequisites
=============

You need Vim compiled with Perl bindings to make this work.

usage
=====

1. Use <F2> to convert from single-line object file to multi-line
2. Use <F3> to convert back
3. Use <F4> while editing to insert `PREABILITY:1,CATEGORY=Special Ability,`.

installation
============

Install [Pathogen.vim](https://github.com/tpope/vim-pathogen "Pathogen.vim"):

Then run:

   ```bash
   cd ~/.vim/bundle/
   git clone https://github.com/pcgen/vim-pcgen.git
   ```

installation sans git
---------------------

1. Download the zip using the [download link](https://github.com/pcgen/vim-pcgen/downloads).
2. Unpack into your bundle dir.

manual installation
-------------------

1. Download the zip using the [download link])(https://github.com/pcgen/vim-pcgen/downloads).
2. Unpack the zip.
3. Alternatively, install ftdetect/pcgen.vim and ftplugin/pcgen.vim into your ftdetect and ftplugin dirs respectively.
