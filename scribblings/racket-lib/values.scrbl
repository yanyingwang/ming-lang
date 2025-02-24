#lang scribble/manual

@(require (for-label racket ming ming/kernel)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/kernel)))

@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "values"]{並}
Racket's @tech[#:doc '(lib "scribblings/reference/reference.scrbl") "value"] is especially called @zi[𰅰] in Ming. @linebreak{}
Racket's @secref["values" #:doc '(lib "scribblings/reference/reference.scrbl")] is especially called @zi[並] in Ming.

@section{𰅰，並，𡌶}
@defideogr[𰅰 "value" "值" "value, worth"]
@defideogr[並 "values" "並" "side by side, together"]{
@anciently-simplifies["竝" "two or more than two objects as a whole" "multiple values"]{(Do not confuse with @zi[并])}.
}
@defideogr[𡌶 (土 並) #f #f #f]
@defideogr[􏸾 (並 名) #f #f #f]
@defideogr[􏸽 (並 令) #f #f #f]

@examples[#:eval (the-eval)
(並 1 2 3 4)
(𡌶 􏿴 (􏸧 (並 1 2 3 4)))
]

@section[#:tag "base-values"]{References}
@defmodule[ming/racket/base]
@defmapping[racket/base/values]



