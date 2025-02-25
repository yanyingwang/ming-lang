#lang scribble/manual

@(require (for-label racket racket/function ming ming/kernel)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/list ming/racket/string ming/racket/function ming/kernel)))

@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "procedures"]{禾}
Racket's @secref["procedures" #:doc '(lib "scribblings/reference/reference.scrbl")] is especially called @zi[禾] in Ming.



@section+autotag{禾、禾?}
@defzi[禾]{@modernly-simplifies["程" "journey/procedure"]}
@examples[#:eval (the-eval)
(禾? (􏸧 1))
]

@section+autotag{入、􏸗}
@eleph-note{@racket[􏸧]、@racket[􏸬]、@racket[􏸫]、@racket[􏸪]}
@examples[#:eval (the-eval)
(入 () 空)
(名 fun
  (􏸗 [() #f]
      [(x) x]
      [(x y) (􏿴 x y)]
      [(x y z) (􏻿 x y z)]))
(fun)
(fun 1)
(fun 1 2)
(fun 1 2 3)
]


@section+autotag{􏸛，􏸚}
@itemlist[
@item{@defzi/puauni[􏸛]}
@item{@defzi/puauni[􏸚]}
]
@examples[#:eval (the-eval)
((􏸛 􏿴 􏾺分) '("a" "b" "c") 2)
((􏸚 句化􏷂 􏶒) '("a" "b" "c"))
]

@section+autotag{􏸘}
@defzi/puauni[􏸘]
@examples[#:eval (the-eval)
((􏸘 􏿴 '􏿴1) 'a 'b 'c 'd)
]

@section[#:tag "base-functions"]{Base References}
@defmodule[ming/racket/base]
@defmapping[racket/base/procedures]

@defideogr[(入 /入 λ) (/ 入 λ) "lambda" "入" "get in"]{
Implies the input data is procedure instead of normal data.
@ziexamples[􏹌 攸/入]
}

@defideogr[名 "define" "名" "name"]
@defideogr[令 "let" "令" "let, order"]

@section[#:tag "addtional-functions"]{Additional References}
@defmodule[ming/racket/function]
@defmapping[racket/function]




