#lang scribble/manual

@(require (for-label racket ming ming/string)
           scribble/eval ming/scribble)

@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/list ming/string)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "equality"]{同}
@section+elemref{同? 􏷇? 冃? 􏷅?}
@defzi[同]{@same-as-cnchar["同" "equal"].}
@defzi[􏷇]{almost same as @zi[同] other than that @zi[𭕄] implies difference about mutable data.}
@defzi[冃]{the simplification version of @zi[同]. (Do not confuse with @zi[月])}
@defzi[􏷅]{almost same as @zi[冃] other than that @zi[米] implies difference about numbers.}

@examples[#:eval (the-eval)
(同? (􏽀 #\a #\b #\c) (􏽀 #\a #\b #\c))
(同? (􏿴 1 2) (􏿴 1 2))
(同? (expt 2 100) (expt 2 100))
]
@examples[#:eval (the-eval)
(􏷇? (􏽀 #\a #\b #\b) (􏽀 #\a #\b #\b))
(􏷇? (􏽁 #\a #\b #\b) (􏽁 #\a #\b #\b))
(􏷇? (􏿴 1 2) (􏿴 1 2))

(􏷇? (expt 2 100) (expt 2 100))
]

@examples[#:eval (the-eval)
(冃? (􏽀 #\a #\b #\c) (􏽀 #\a #\b #\c))
(冃? (􏿴 1 2) (􏿴 1 2))
(冃? (expt 2 100) (expt 2 100))
]
@examples[#:eval (the-eval)
(􏷅? (􏽀 #\a #\b #\c) (􏽀 #\a #\b #\c))
(􏷅? (􏿴 1 2) (􏿴 1 2))
(􏷅? (expt 2 100) (expt 2 100))
]

@section[#:tag "racket-equality"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/equality]