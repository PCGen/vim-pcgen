" pcgen.vim - Editing PCGen LST files made easy
" Maintainer:   Henk Slaaf <henk@henkslaaf.nl>
" Version:      0.1

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1
let b:did_conversion = 0


""" Automatically rewrite to tabbed format on write if we converted to multi-line
autocmd BufWritePre <buffer> call pcgen#multiLineToTabbed()


""" Function that set the syntax highlighting in tabbed format and hide it in
""" multi-line format

function! pcgen#setTabbedOptions() " {{{
	setlocal list lcs=eol:¶,tab:»-,trail:·
	setlocal noautoindent
endfunction " }}}

function! pcgen#setMultiLineOptions() " {{{
	setlocal autoindent
endfunction


""" Functions to convert between formats

function! pcgen#multiLineToTabbed() " {{{
	if !b:did_conversion
		return
	endif

	:%!perl -e 'undef $/; my $lst = <>; $lst =~ s/\n(?\!\n)//gsm; $lst =~ s/\n\n/\n/g; print $lst'
	let b:did_conversion = 0
endfunction " }}}

function! pcgen#tabbedToMultiLine() " {{{
	if b:did_conversion
		return
	endif

	:%!perl -p -e 's/\n/\n\n/g; s/\t+/\n\t/g;'
	let b:did_conversion = 1
endfunction " }}}



""""""""""" Run

""" Set standard options

syntax on
setlocal list lcs=eol:¶,tab:»-,trail:·
setlocal nowrap

" We start in Tabbed mode
set noexpandtab
call pcgen#setTabbedOptions()


nmap <buffer> <F2> :call pcgen#tabbedToMultiLine()<CR>:call pcgen#setMultiLineOptions()<CR>
nmap <buffer> <F3> :call pcgen#multiLineToTabbed()<CR>:call pcgen#setTabbedOptions()<CR>
imap <buffer> <F4> PREABILITY:1,CATEGORY=Special Ability,
