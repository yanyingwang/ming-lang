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
@section{同? 􏷇? 冃? 􏷅?}
@defideogr[同 "equal always" "同" "equal, as same as"]

@defideogr[冃 "simply equal" "冃" "hat"]{
Ignore the original meaning in Chinese, and especially take it as the simplification version of @zi[同] in Ming. (Do not confuse with @zi[月])
}
@defideogr[􏷇 (𭕄  同) "equal without mutable" #f #f]{
@elem{Almost same as @zi[同] other than that @zi[𭕄] implies difference about mutable data.}
}

@defideogr[􏷅 (冃 米) "only equal on numbers" #f #f]{
@elem{Almost same as @zi[冃] other than that @zi[米] implies difference about numbers.}
}

@examples[#:eval (the-eval)
(同? (􏽀 #\a #\b #\c) (􏽀 #\a #\b #\c))
(同? (􏽁 #\a #\b #\b) (􏽁 #\a #\b #\b))
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
(冃? (􏽁 #\a #\b #\b) (􏽁 #\a #\b #\b))
(冃? (􏿴 1 2) (􏿴 1 2))
(冃? (expt 2 100) (expt 2 100))
]
@examples[#:eval (the-eval)
(􏷅? (􏽀 #\a #\b #\c) (􏽀 #\a #\b #\c))
(􏷅? (􏽁 #\a #\b #\b) (􏽁 #\a #\b #\b))
(􏷅? (􏿴 1 2) (􏿴 1 2))
(􏷅? (expt 2 100) (expt 2 100))
]

@section[#:tag "racket-equality"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/equality]