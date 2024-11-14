#lang scribble/manual

@(require (for-label racket ming ming/list ming/vector ming/bool)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/vector ming/vector)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "vector"]{􏻿}
Originates from @secref["vectors" #:doc '(lib "scribblings/reference/reference.scrbl")] and Extends to @secref["ming-vector"].


@section[#:tag "nameing-rules-of-vetor"]{Naming Rules}
To extend @secref["naming-rules"], specifically there are：

@tabular[@;#:sep @hspace[0]
         #:style 'boxed
         #:column-properties '(center)
         #:row-properties '(border)
         (list (list @bold{Character} @bold{Connotation} @bold{Elucidation} @bold{Example})
               @; (list
               @; @; @bold{@litchar{氵}}
               @; @elem{@litchar{􏻿} as radical and @litchar{山} as compoment}
               @; @elem{immutiable vector}
               @; @elem{immutiable vector}
               @; @elem{@racket[􏻼] @racket[􏻽] @racket[􏻼?] @racket[􏻽?]}
               @; )
               @; (list
               @; @elem{对@bold{@litchar{􏻿}}加偏旁}
               @; @elem{构造生成特殊元素组成的@racket[􏻿]}
               @; @elem{出参数据结构是@racket[􏻿]}
               @; @elem{@racket[􏻺]、@racket[􏻻]、@racket[􏻹]}
               @; )
               @; (list
               @; @elem{左偏旁@bold{@litchar{亻}}}
               @; "相似集（类型相同且元素相似）"
               @; @elem{出参数据与进参数据相比，类型相同且内容类似}
               @; @elem{@racket[􏻿𠆯]}
               @; )
               @; (list
               @; @elem{@litchar{土}偏旁}
               @; @elem{构建}
               @; @elem{含有“构建”的意思}
               @; @elem{@racket[􏻿㙏!]}
               @; )
               (list
               @elem{@defcomponent[扌]}
               @elem{direct modification}
               @elem{directly modify the orignal data and return void}
               @elem{@racket[􏻿􏾩] @racket[􏻿􏽒] @racket[􏻿􏷉]}
               )
               (list @bold{Phrase} @bold{--} @bold{--} @bold{--})
               @; (list
               @; @elem{以@litchar{􏻿}结尾}
               @; @elem{指示出参}
               @; @elem{出参数据是@racket[􏻿]类数据}
               @; @elem{@racket[复􏻿]、@racket[序􏻿]、@racket[贯􏻿]}
               @; )
               (list
               @elem{@defprefix[􏻿]}
               @elem{@zi[􏻿] as input}
               @elem{implies the type of input data is @racket[􏻿]}
               @elem{@racket[􏻿巨] @racket[􏻿弔] @racket[􏻿𠆯]}
               )
               (list
               @elem{@defsuffix[化]}
               @elem{minor type convertion}
               @elem{implies slightly convert the type of input data, i.e. from mutable to immutable.}
               @elem{@racket[􏻼化]}
               )
               (list
               @elem{@definsert[化]}
               @elem{type convertion}
               @elem{implies convert the type of input data, i.e. from @racket[􏻿] to @racket[􏿴].}
               @elem{@racket[􏻿化􏿴] @racket[􏿴化􏻿]}
               )
               @; (list
               @; @elem{@litchar{!}结尾}
               @; @elem{指示修改方式}
               @; @elem{直接修改了原始数据}
               @; @elem{@racket[􏻿㙏!]}
               @; )
               @; (list
               @; @elem{@bold{@litchar{+}}结尾}
               @; @elem{入参}
               @; @elem{入参数据以相同方式多次出现}
               @; @elem{@racket[􏻿􏾩+]}
               @; )
         )
         ]

@section+elemref{􏻿 􏻽 􏻼, 􏻿? 􏻽? 􏻼?, 􏻸?}
@defzi[􏻿]{@defzi/sub[矢]{@ori-esp-means["arrow" "vector"]} @zi[十], @ori-esp-means["ten" "fixed length"].}
@defzi[􏻽]{@defzi/sub[𭕄]{is the horizontal way to write @litchar{氵}, which is @simplf-from{水}, @ori-esp-means["water" @elem{mutable(@racket[水?])}]}}
@defzi[􏻼]{@defzi/sub[山]{@ori-esp-means["mountain" @elem{immutable(@racket[山?])}]}}
@defzi[􏻸]{@zi[穴].}
@examples[#:eval (the-eval)
(􏻽 1 2 3 4)
(􏻽? (􏻽 1 2 3 4))

(􏻼 1 2 3 4)
(􏻼? (􏻼 1 2 3 4))

(􏻽? (􏻿 1 2 3 4))
(􏻼? '#(1 2 3 4))

(􏻿? (􏻿 1 2 3 4))
(􏻿? (􏻽 1 2 3 4))
(􏻿? (􏻼 1 2 3 4))

(􏻸? (􏻿))
(􏻸? #())
]

@section{􏻺 􏻻 􏻹}
@eleph-note{@racket[􏼓] @racket[􏼎] @racket[􏿝]}
@examples[#:eval (the-eval)
(􏻺 5 'foo)
(􏻻 5 􏽊)
(􏻹 '#(1) '#(2) '#(3) '#(4))
]

@section{􏻿巨, 􏻿弔, 􏻿𠆯 􏻿􏽒}
@eleph-note{@racket[巨] @racket[弔] @racket[𠆯]}
@examples[#:eval (the-eval)
(􏻿巨 '#(1 2 3 4))
(􏻿弔 '#(a b c d) 2)
(􏻿𠆯 '#(1 222 35 4) <)
(􏻿􏽒 (􏻿 1 222 35 4) <)
]

@section{􏻼化, 􏻿化􏿴 􏿴化􏻿 􏻿􏾝化並}
@eleph-note{@racket[􏻼] @racket[􏻿􏾝]  @;、@racket[􏻿化􏸼]
}
@; @margin-note{另见：@racket[􏻿􏾝化􏸼*]}
@examples[#:eval (the-eval)
(􏻼化 '#(a b c d))
(􏿴化􏻿 '(a b c d))
(􏻿化􏿴 '#(a b c d))
(􏻿􏾝化並 '#(a b c d) 0 2)
]

@section{􏻿􏾺 􏻿􏷵 􏻿􏸄 􏻿􏾝}
@eleph-note{@racket[􏾺] @racket[􏸄] @racket[􏾝]}
@; @margin-note{另见：@racket[􏻿􏾝*]}

@examples[#:eval (the-eval)
(􏻿􏾺 '#(a b c d e f) 2)
(􏻿􏷵 '#(a b c d e f) 2)
(􏻿􏸄 '#(a b c d e f) 2)
(􏻿􏾝 '#(a b c d e f) 0 2)
]

@section{􏻿弓, 􏻿􏷑 􏻿􏷉, 􏻿􏹈 􏻿􏹇}
@eleph-note{@racket[弓] @racket[􏷑] @racket[􏹇]}
@examples[#:eval (the-eval)
(􏻿弓 'c '#(a b 1 c 2 d 3 e))
(􏻿􏷑 􏽊 '#(1 2 3 4))
(􏻿􏹈 􏻛? '#(1 2 -3 4))
(􏻿􏹇 􏻛? '#(1 2 -3 4))

(名 vec (􏻿 1 2 3 4))
(􏻿􏷉 􏽊 vec)
vec
]

@section{􏻿􏾩 􏻿𢪛, 􏻺𰅡, 􏻿𢪛/以􏾝}
@eleph-note{@racket[􏾝] @racket[攸]}
@eleph-note{@racket[􏻿􏾝] @;、@racket[􏻿􏾩/以􏾝*]
}
@examples[#:eval (the-eval)
(名 vec (􏻿 'a 'b 'c 'd))
vec
(􏻿􏾩 vec 1 'x)
vec
(􏻿𢪛 vec 1 'h 2 'i 3 'j)
vec
(􏻺𰅡 vec 'z)
vec
(􏻿𢪛/以􏾝 vec 0 '#(aa bb cc dd) 1 3)
vec
]

@section[#:tag "vector-base"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/vector]

@section[#:tag "vector-additional"]{ming/racket/vector}
@defmodule[ming/racket/vector]
@defmapping[racket/vector]
