"Function for formatting the entire buffer
function! g:Autoformat()
	"If a formatprg is specified
	if &formatprg!=""
		"echo "formatprg is: ".&formatprg
	  	"Save window state
	  	let winview=winsaveview()
		"Autoformat code
		:silent exe "normal gggqG"
		"Recall window state
	  	call winrestview(winview)
	else 
		echo "No formatter installed for this filetype"
	endif
endfunction
