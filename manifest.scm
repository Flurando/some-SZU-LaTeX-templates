(define-module (manifest)
  #:use-module (guix profiles)
  #:use-module (gnu packages))

(define-public config
  (specifications->manifest
   (list "texlive-xetex"
	 "texlive-ulem"
	 "texlive-fontspec"
	 "texlive-xecjk"
	 "texlive-ctex"
	 "texlive-wrapfig"
	 "texlive-capt-of"
	 "texlive-float"
	 "texlive-anyfontsize"
	 "texlive-framed"
	 "texlive-fancybox"
	 "texlive-caption"
	 "texlive-booktabs"
	 "texlive-multirow"
	 "texlive-comment"
	 "texlive-titlesec")))

config
	 
