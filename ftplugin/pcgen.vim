" pcgen.vim - Editing PCGen LST files made easy
" Maintainer:   Henk Slaaf <henk@henkslaaf.nl>
" Version:      0.1

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

:syntax on
:set background=dark
:set list lcs=eol:¶,tab:»-,trail:·
:set nowrap
 
nmap <F2> :%!perl -p -e 's/\n/\n\n/g; s/\t+/\n\t/g;'<CR>:set nolist<CR>
nmap <F3> :%!perl -e 'undef $/; my $lst = <>; $lst =~ s/\n(?\!\n)//gsm; $lst =~ s/\n\n/\n/g; print $lst'<CR>:set list lcs=eol:¶,tab:»-,trail:·<CR>
imap <F4> PREABILITY:1,CATEGORY=Special Ability,
