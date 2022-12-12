#lang scribble/manual

@(require (for-label racket ming)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base)))

@(require (file "../../private/scribble-styles/css/fonts.css.rkt"))
@css/wenquan-extend-font
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "hash"]{􏿱}
“􏿱”（@tech[ #:doc '(lib "scribblings/reference/reference.scrbl") "hash"]）是一种元素是“键值对”的数据结构。（另外，通过@racket[􏿴]数据结构也能构造出来元素是“键值对”的数据结构，这种数据结构我们称之为“􏿳”（association list）。）


@margin-note{
@bold{@litchar{􏿱}为新造字}
@itemlist[
@item{该字中的偏旁@litchar{宀}表示“坚”（@racket[坚?]）的意思；}
@item{偏旁@litchar{双}表示该数据的主要组成元素是一种“键值对”（类似@racket[双]）。}
]

@bold{@litchar{􏿳}为新造字}
@itemlist[
@item{该字仿照@litchar{􏿴}字而造，表示其也是一种@racket[􏿴]数据结构；}
@item{偏旁@litchar{双}表示该数据的主要组成元素是一种“键值对”（类似@racket[双]）。}
]
}

@section+elemref{􏿱、􏿱/􏾬、􏿱/粡、􏿱/侗，􏿱?，􏿱/同?、􏿱/􏾬?、􏿱/粡?、􏿱/侗?，􏿱/刚?、􏿱/柔?}
@examples[#:eval (the-eval)
(􏿱 1 2 3 4)
(􏿱/同? (􏿱 1 2 3 4))
(􏿱/刚? (􏿱 1 2 3 4))
(坚? (􏿱 1 2 3 4))
(􏿱? (􏿱 1 2 3 4))

(􏿱/􏾬 1 2 3 4)
(􏿱/􏾬? (􏿱/􏾬 1 2 3 4))
(􏿱/刚? (􏿱/􏾬 1 2 3 4))
(坚? (􏿱/􏾬 1 2 3 4))
(􏿱? (􏿱/􏾬 1 2 3 4))
]

@section+elemref{􏿳->􏿱、􏿳->􏿱/􏾬、􏿳->􏿱/粡、􏿳->􏿱/侗}
@examples[#:eval (the-eval)
(􏿳->􏿱 '((1 . 2) (3 . 4)))
(􏿱/同? (􏿳->􏿱 '((1 . 2) (3 . 4))))
(􏿱/刚? (􏿳->􏿱 '((1 . 2) (3 . 4))))
(坚? (􏿳->􏿱 '((1 . 2) (3 . 4))))
(􏿱? (􏿳->􏿱 '((1 . 2) (3 . 4))))
]

@section+elemref{􏿳->􏿱/易、􏿳->􏿱/􏾬/易、􏿳->􏿱/粡/易、􏿳->􏿱/侗/易}
“易”是“坚”（@racket[坚?]）的反义。
@examples[#:eval (the-eval)
(􏿳->􏿱/易 '((1 . 2) (3 . 4)))
(􏿱/同? (􏿳->􏿱/易 '((1 . 2) (3 . 4))))
(􏿱/刚? (􏿳->􏿱/易 '((1 . 2) (3 . 4))))
(坚? (􏿳->􏿱/易 '((1 . 2) (3 . 4))))
(􏿱? (􏿳->􏿱/易 '((1 . 2) (3 . 4))))
]

@section+elemref{􏿳->􏿱/柔、􏿳->􏿱/􏾬/柔、􏿳->􏿱/粡/柔、􏿳->􏿱/侗/柔}
@examples[#:eval (the-eval)
(􏿳->􏿱/柔 '((1 . 2) (3 . 4)))
(􏿱/同? (􏿳->􏿱/柔 '((1 . 2) (3 . 4))))
(􏿱/刚? (􏿳->􏿱/柔 '((1 . 2) (3 . 4))))
(坚? (􏿳->􏿱/柔 '((1 . 2) (3 . 4))))
(􏿱? (􏿳->􏿱/柔 '((1 . 2) (3 . 4))))
]


@section[#:tag "hash-base"]{基础例程}
@defmapping[
racket/base/hash
]
