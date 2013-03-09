if !exists("g:formatprg_cs")
    let g:formatprg_cs = "astyle"
endif
if !exists("g:formatprg_args_cs")
    let g:formatprg_args_cs = "--mode=cs --style=ansi -p -c -H"
endif

if !exists("g:formatprg_c")
    let g:formatprg_c = "astyle"
endif
if !exists("g:formatprg_args_c")
    let g:formatprg_args_c = "--mode=c --style=ansi -p -c -H"
endif

if !exists("g:formatprg_cpp")
    let g:formatprg_cpp = "astyle"
endif
if !exists("g:formatprg_args_cpp")
    let g:formatprg_args_cpp = "--mode=c --style=ansi -p -c -H"
endif

if !exists("g:formatprg_java")
    let g:formatprg_java = "astyle"
endif
if !exists("g:formatprg_args_java")
    let g:formatprg_args_java = "--mode=java --style=ansi -p -c -H"
endif

"if !exists("g:formatprg_php")
"    let g:formatprg_php = "phpCB"
"endif
"if !exists("g:formatprg_args_php")
"    let g:formatprg_args_php = "--space-after-if --space-after-switch --space-after-while --space-before-start-angle-bracket --space-after-end-angle-bracket --one-true-brace-function-declaration --glue-amperscore --change-shell-comment-to-double-slashes-comment --force-large-php-code-tag --force-true-false-null-contant-lowercase --align-equal-statements --comment-rendering-style PEAR --equal-align-position 50 --padding-char-count 4"
"endif

if !exists("g:formatprg_python")
    let g:formatprg_python = "autopep8"
endif
if !exists("g:formatprg_args_python")
    let g:formatprg_args_python = "/dev/stdin"
endif

if !exists("g:formatprg_xml")
    let g:formatprg_xml = "tidy"
endif
if !exists("g:formatprg_args_xml")
    let g:formatprg_args_xml = "-q -xml --show-errors 10 --show-warnings 10 --indent auto --indent-spaces 4 --vertical-space yes --tidy-mark no --wrap 68"
endif
if !exists("g:formatprg_html")
    let g:formatprg_html = "tidy"
endif
if !exists("g:formatprg_args_html")
    let g:formatprg_args_html = "-q --show-errors 0 --show-warnings 0 --indent auto --indent-spaces 4 --vertical-space yes --tidy-mark no --wrap 68"
endif
if !exists("g:formatprg_xhtml")
    let g:formatprg_xhtml = "tidy"
endif
if !exists("g:formatprg_args_xhtml")
    let g:formatprg_args_xhtml = "-q --show-errors 0 --show-warnings 0 --indent auto --indent-spaces 4 --vertical-space yes --tidy-mark no --wrap 68 -asxhtml"
endif

if !exists("g:formatprg_javascript")
    let g:formatprg_javascript = "js-beautify"

    "We allow an alternative path for js-beautify
    "If js-beautify is installed as a bundle, we still want to detect it
    let s:bundleDir = fnamemodify(expand("<sfile>"), ":h:h:h")
    let s:jsbeautify_alternative = s:bundleDir."/js-beautify/python/".g:formatprg_javascript
    if executable(s:jsbeautify_alternative)
        let g:formatprg_javascript = s:jsbeautify_alternative
    endif
endif
if !exists("g:formatprg_args_javascript")
    let g:formatprg_args_javascript = "-i"
endif


"Set default indent behaviour to match with the formatprg defaults
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
