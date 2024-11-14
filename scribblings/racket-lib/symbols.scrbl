#lang scribble/manual

@(require (for-label racket ming ming/list)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/symbol)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*

@title[#:tag "symbols"]{􏷂}
Originates from @secref["symbols" #:doc '(lib "scribblings/reference/reference.scrbl")].

@section[#:tag "nameing-rules-of-symbol"]{Naming Rules}
@secref["naming-rules"]

@section[#:tag "symbol-interned-uninterned-unreadable"]{􏷂 􏺏 􏺍 􏺋}
@racket[􏷂] normally is 􏺏(interned symbol), relatively can be：􏺍(uninterned), 􏺋(unreadable, partially interned).

@defzi[􏷂]{resembles @zitools-ref["勺"], @ori-esp-means["spoon, spoon-shape objects" "symbol"]}
@defzi[􏺏]{ @defzi/sub[罒]{simplified from @zitools-ref["罒" "网"], @ori-esp-means["fishing or bird net, net-shape object, caught by net" "interned"]}}
@defzi[􏺍]{ @defzi/sub[􏺎]{resembles @zi[罒], @ori-esp-means["broken bird net" "uninterned"].}}
@defzi[􏺋]{ @defzi/sub[龱]{resembles @zi[罒], @ori-esp-means["moderate broken bird net" "unreadable, partially interned"]}}

@examples[#:eval (the-eval)
(􏷂? 'apple)
(􏺏? 'apple)
(􏺋? 'apple)
(􏺌 'apple)
(􏺏? (􏺌 'apple))
]

@section[#:tag "convert-symbols-to-others"]{􏷂化􏽁 􏷂化􏷁 􏷁化􏷂 􏷁化􏺍 􏷁化􏺋}
@examples[#:eval (the-eval)
(􏷂化􏽁 'symbol)
(􏷂化􏷁 'symbol)

(􏷁化􏷂 "string")
(􏷁化􏺍 "string")
(􏷁化􏺋 "string")
]

@section[#:tag "symbols-base"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/symbols]

@section[#:tag "symbols-additional"]{ming/racket/symbol}
@defmodule[ming/racket/symbol]
@defmapping[racket/symbol]
