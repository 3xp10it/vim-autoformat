let s:prgpath-"phpCB"
let s:arguments="--space-after-if   --space-after-switch --space-after-while --space-before-start-angle-bracket   --space-after-end-angle-bracket   --one-true-brace-function-declaration   --glue-amperscore   --change-shell-comment-to-double-slashes-comment   --force-large-php-code-tag   --force-true-false-null-contant-lowercase   --align-equal-statements   --comment-rendering-style PEAR   --equal-align-position 50   --padding-char-count 4"
if executable(s:prgpath)
	let &formatprg=s:prgpath." ".s:arguments
endif
