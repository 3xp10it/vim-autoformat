if !exists("g:formatprg_cs") | let g:formatprg_cs = "astyle" | endif
if !exists("g:formatprg_args_expr_cs") 
    let g:formatprg_args_expr_cs = '"--mode=cs --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")' 
endif

if !exists("g:formatprg_c") | let g:formatprg_c = "astyle" | endif
if !exists("g:formatprg_args_expr_c") 
    let g:formatprg_args_expr_c = '"--mode=c --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_cpp") | let g:formatprg_cpp = "astyle" | endif
if !exists("g:formatprg_args_expr_cpp") 
    let g:formatprg_args_expr_cpp = '"--mode=c --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_java") | let g:formatprg_java = "astyle" | endif
if !exists("g:formatprg_args_expr_java") 
    let g:formatprg_args_expr_java = '"--mode=java --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_python") | let g:formatprg_python = "autopep8" | endif
if !exists("g:formatprg_args_expr_python") 
    let g:formatprg_args_expr_python = '"/dev/stdin"' 
endif

if !exists("g:formatprg_xml") | let g:formatprg_xml = "tidy" | endif
if !exists("g:formatprg_args_expr_xml") 
    let g:formatprg_args_expr_xml = '"-q -xml --show-errors 0 --show-warnings 0 --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no"' 
endif

if !exists("g:formatprg_html") | let g:formatprg_html = "tidy" | endif
if !exists("g:formatprg_args_expr_html") 
    let g:formatprg_args_expr_html = '"-q --show-errors 0 --show-warnings 0 --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no"' 
endif

if !exists("g:formatprg_xhtml") | let g:formatprg_xhtml = "tidy" | endif
if !exists("g:formatprg_args_expr_xhtml") 
    let g:formatprg_args_expr_xhtml = '"-q --show-errors 0 --show-warnings 0 --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -asxhtml"' 
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
if !exists("g:formatprg_args_expr_javascript")
    let g:formatprg_args_expr_javascript = '"-i -s".&shiftwidth'
endif
