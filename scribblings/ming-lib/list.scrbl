#lang scribble/manual

@(require (for-label ming/racket/base ming/racket/list ming/list)
           ming/scribble ming/list
           scribble/eval)
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/list ming/list)))

@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "ming-list"]{􏿴}
@defmodule[ming/list]
Originates from @secref["pairs-and-lists"].
@margin-note{All the procedures in this page are implemented in Ming, therefore, the source code can be seen as a demonstation of it.}


@; @deftogether[(
@; @defproc[(弓* [LST 􏿴?] [V any/c])
@;           􏸼?]
@; @defproc[(弓*/入 [LST 􏿴?] [PROC 程?])
@;           􏸼?]
@; )]{
@; @racket[弓*]、@racket[弓*/入]分别是对@racket[弓]、@racket[弓/入]加强力度。 @linebreak{}
@; @margin-note{@litchar{弓}为活用字，另见：@racket[弓]、@racket[𰁣]}
@; @examples[#:eval (the-eval)
@; (弓* '(a b c d c f) 'c)
@; (弓*/入 '(a 32 c 11 c f) 米?)
@; ]
@; }

@deftogether[(
@defproc[(伄 [LST 􏿴?] [N 􏺡?] ...)
          􏿴?]
@defproc[(伄^ [LST 􏿴?] [N-LST (listof 􏺡?)])
          􏿴?]
)]{
@; @defzi[伄]{Composed of @racket[亻] + @racket[弔] + @racket[^].}
@defideogr[(伄 伄^) (亻 弔 ^) #f #f #f]
@examples[#:eval (the-eval)
(伄 '(a b c d e f g) 0 2 3)
(伄^ '(a b c d e f g) '(0 2 3))
]
}

@deftogether[(
@defproc[(􏾝 [LST 􏿴?] [N1 􏺡?] [N2 􏺡? +inf.0])
          􏿴?]
@; @defproc[(􏾝* [LST 􏿴?] [N1 􏺡?] [N2 􏺡?])
@;           􏿴?]
)]{
@defideogr[􏾝 (弔 阝) #f #f #f]
@examples[#:eval (the-eval)
(􏾝 '(a b c d e f) 0)
(􏾝 '(a b c d e f) 0 0)
(􏾝 '(a b c d e f) 0 1)
(􏾝 '(a b c d e f) 1 2)
(􏾝 '(a b c d e f) 0 2)
(􏾝 '(a b c d e f) 0 5)
(􏾝 '(a b c d e f) 2 5)


@; (􏾝* '(a b c d e f) 0 0)
@; (􏾝* '(a b c d e f) 0 1)
@; (􏾝* '(a b c d e f) 1 2)
@; (􏾝* '(a b c d e f) 0 2)
@; (􏾝* '(a b c d e f) 0 5)
@; (􏾝* '(a b c d e f) 2 5)
]
}

@deftogether[(
@defproc[(􏾘 [LST 􏿴?] [N 􏺡?])
          􏿴?]
@defproc[(􏾘^ [LST 􏿴?] [N-LST (listof? 􏺡?)])
          􏿴?]
)]{
@defideogr[(􏾘 􏾘^) (弔 刂 ^) #f #f #f]
@eleph-note{@racket[􏾺] @racket[𨚞]}
@examples[#:eval (the-eval)
(􏾘 '(a b c d e f g) 1)
(􏾘^ '(a b c d e f g) '(0 1 3))
]
}


@defproc[(􏺊 [LST 􏿴?] [N 􏺡?] [M 􏺡?])
                       􏿴?]{
@defideogr[􏺊 (􏷵 􏷴) #f #f #f]
Shorts for @code{(􏷴 (􏷵 LST N) M)}.
@examples[#:eval (the-eval)
(􏺊 '(a b c d e f g) 1 3)
]
}

@defproc[(􏹃 [LST 􏿴?] [PROC 程?])
          􏺡?]{
@defideogr[􏹃 (巨 入) #f #f #f]
@eleph-note{@racket[􏹈巨]}
@examples[#:eval (the-eval)
(􏹃 '(a b 12 c 33 d  58 f g) 米?)
]
}

@defproc[(偅 [LST 􏿴?])
          􏿴?]{
@defideogr[偅 (亻 重) #f #f #f]
@examples[#:eval (the-eval)
(偅 '())
(偅 '(11))
(偅 '(11 22 33 22 44))
(偅 '(11 11 11 22 55 22 33 88 88 88 99 99))
]
}

@defproc[(􏹊 [V any/c] [LST 􏿴?] (PROC 程? 同?))
          􏿴?]{
@defideogr[􏹊 (彐 刂) #f #f #f]
@eleph-note{@racket[􏹊~] @racket[􏹊^]}
@examples[#:eval (the-eval)
(􏹊 'c '(a b c d e c f))
]
}

@defproc[(􏷍? [LST1 􏿴?] [LST2 􏿴?])
          boolean?]{
@racket[LST1] is a subset of @racket[LST2] or not.
@defideogr[􏷍 (亻 􏿴) #f #f #f]
@defideogr[􏷍? (􏷍 ?) #f #f #f]
@examples[#:eval (the-eval)
(􏷍? '(a b) '(a b c d e f g))
(􏷍? '(a e) '(a b c d e f g))
(􏷍? '(a z) '(a b c d e f g))
]
}

@; @defproc[(􏼓 [V any?] [N 􏺡?] ...) 􏿴?]{
@; Composed of @racket[三], @racket[􏿴].
@; Same as @racket[􏼓0] except the reverse order of arguments.
@; @examples[#:eval (the-eval)
@; (􏼓 'val 8)
@; ]
@; }

@defproc[(􏿳 [V any?] ...) 􏿳?]{
@defideogr[􏿳 (双 􏿴) "association list" #f #f]
@eleph-note{@racket[􏿰]}
@examples[#:eval (the-eval)
(􏿳 1 2 3 4 1 5)
(􏿳)
(􏿳 1)
(􏿳 1 2 3)
]
}


@defproc[(􏿳? [V any?]) boolean?]{
@defideogr[􏿳? (􏿳 ?) #f #f #f]
@var[V] is @racket[􏿳] or not.
Shorts for @code{(并 (􏿴? V) (􏷐 双? V))}.
@examples[#:eval (the-eval)
(􏿳? '(1 2 3 4))
(􏿳? (􏿳 1 2 3 4))
(􏿳? '((1 . 2) (3 . 4)))
(􏿳? '((1 2) (3 4)))
(􏿳? '((1 (2)) (3 (4))))
]
}


@deftogether[(
@defproc[(􏺈 [ALST 􏿳?])
          􏿴?]
@defproc[(􏺇 [ALST 􏿳?])
          􏿴?]
)]{
@defideogr[(􏺈 􏺇) ((日 月) 阝) #f #f #f]
Same as：
@itemlist[
@item{@code{(􏷑 阳 ALST)}}
@item{@code{(􏷑 阴 ALST)}}
]
@eleph-note{@racket[阴] @racket[阳] @racket[􏹉] @racket[􏿰􏺈] @racket[􏿰􏺇]}

@examples[#:eval (the-eval)
(􏺈 '((1 . 2) (3 . 4)))
(􏺇 '((1 . 2) (3 . 4)))
]
}
