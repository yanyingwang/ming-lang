#lang scribble/manual

@(require (for-label ming/racket/base ming/racket/hash ming/racket/list
                      ming/list ming/string  ming/hash)
           ming/scribble
           scribble/eval)
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/string ming/string)))

@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*

@title[#:tag "ming-string"]{句}
Orignates from @secref["string"].
@defmodule[ming/string]

@(require scribble/core)
@(require scribble/html-properties)



@deftogether[(
@defproc[(􏽀 [V any?] ...) 􏽀?]
@defproc[(􏽁 [V any?] ...) 􏽁?]
)]{
@eleph-note{@rackets[􏾐 􏾑]}

@defideogr[􏽀 (𭕄  句B) "mutable string"]
@defideogr[􏽁 (山  句B) "immutable string"]{
Resembles @zi[句], but specifically is immutable or mutable.
}

@examples[#:eval (the-eval)
(􏽀 #\a #\b #\c #\d)
(􏽁 #\a #\b #\c #\d)
]
}

@deftogether[(
@defproc[(􏽀? [V any?]) boolean?]
@defproc[(􏽁? [V any?]) boolean?])]{
@zi[􏽀] + @zi[?], @zi[􏽁] + @zi[?]
@examples[#:eval (the-eval)
(􏽀? (􏽀 #\a #\b #\c #\d))
(􏽁? (􏽁 #\a #\b #\c #\d))
]
}


@; @defproc[(邭* [STR 句?] [N1 精确非负整数?] [N2 精确非负整数?])
@; 句?]{
@; @margin-note{另见：@racket[邭]}
@; @examples[#:eval (the-eval)
@; (邭* "abcdefg" 0 2)
@; ]
@; }

@defideogr[􏻷 (穴 句) "empty string"]
@defproc[(􏻷? [V any?])
boolean?]{
@eleph-note{@racket[􏼟?]}
@zi[􏻷] + @zi[?]
@examples[#:eval (the-eval)
(􏻷? "abcdefg")
(􏻷? "")
]
}


@defproc[(􏸵 [STR 句?])
句?]{
@defideogr[􏸵 (句 穴 刀) "remove spaces of string"]
@margin-note{
Same as：@code{(􏶐 STR " " "")}}
@examples[#:eval (the-eval)
(􏸵 " a b  cd    e   ")
]
}
