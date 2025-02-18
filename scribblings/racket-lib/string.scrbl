#lang scribble/manual

@(require (for-label racket ming ming/list ming/vector ming/hash ming/string)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/string ming/string)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "string"]{句}
Originates from @secref["strings" #:doc '(lib "scribblings/reference/reference.scrbl")] and extends to @secref["ming-string"].

@section{句 􏽀 􏽁, 句? 􏽀? 􏽁?, 􏼟?}
@eleph-note{@zi[􏷂] @zi[􏶿]}
@eleph-note{@zi[􏽀] @zi[􏽁]}

@defideogr[句 "string" "句" "sentences"]{
@ziexamples[句? 句化􏿴 􏿴化句]

@defsubideogr[句B "output type is string"]{
@ziexamples[􏽀 􏼅 􏼄 􏼃 􏼂]
}

@defsubideogr[句L "input type is string"]{
@ziexamples[􏺕 􏼭 􏶒 􏶐 􏶊 􏶋 邭 􏶉 􏶈 􏶇 􏶆]
}

@defsubideogr[句R "output type is string"]{
@ziexamples[􏶑]
}
}


@examples[#:eval (the-eval)
(句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g)
(句? (句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g))
(􏽀? (句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g))
(􏽁? (句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g))
(􏽁? "ThisIsString")
(句? "ThisIsString")
(􏼟? "ThisIsString")
(􏼟? "")
]

@section{􏽁化 􏽀化}
@examples[#:eval (the-eval)
(􏽁? (􏽁化 (句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g)))
(􏽀? (􏽀化 "ThisIsString"))
]

@section{􏼅, 􏼄}
@eleph-note{@racket[􏼓] @racket[􏼎]}
@defideogr[􏼅 (三 句B) "duplicated elements of string"]
@defideogr[􏼄 (弓 句B) "references resembled elements of string"]
@examples[#:eval (the-eval)
(􏼅 5 #\t)
(􏼄 5 米化句)
]

@section{􏼃, 􏼁, 􏼂}
@eleph-note{@racket[􏿝] @racket[􏿜]}
@defideogr[􏼃 (毌 句B) "appended string"]
@defideogr[􏼂 (毌 又 句B) @elem{appended string with last input being @zi[􏿴] type.}]
@defideogr[􏼁 (山 􏼃) "immutable appended string"]

@examples[#:eval (the-eval)
(􏼃 "AAA" "BBB" "CCC")
(􏼁 "AAA" "BBB" "CCC")
(􏼂 "AAA" "BBB" '("CCC" "DDD"))
(􏽁? (􏼃 "AAA" "BBB" "CCC"))
(􏽁? (􏼁 "AAA" "BBB" "CCC"))
(􏽁? (􏼂 "AAA" "BBB" '("CCC" "DDD")))
]

@section{􏺕, 􏼭, 邭}
@eleph-note{@racket[巨]  @racket[弔]  @racket[􏾝] @racket[􏻿􏾝]}
@eleph-note{@zi[邭] is short for @litchar{句􏾝}}
@defideogr[􏺕 (句 巨) "measure string length"]
@defideogr[􏼭 (句 弔) "refers a specific element of string"]
@defideogr[邭 (句 阝) "substring"]
@examples[#:eval (the-eval)
(􏺕 "ThisIsString")
(􏼭 "ThisIsString" 3)
(邭 "ThisIsString" 3)
(邭 "ThisIsString" 3 8)
]


@section{􏼘, 􏼘/以􏾝, 􏼅𰅡}
@; @bold{@litchar{拘}为古活字} @linebreak{}
@; @bold{@litchar{􏼿}为古活字}
@defideogr[􏼘 (扌 句 攵) "directly change string"]
@; @bold{@litchar{邭}为古活字} @linebreak{}
@; @margin-note{另见：@racket[􏼅], @racket[邭]}
@eleph-note{@racket[􏼅] @racket[攸] @racket[􏻿􏾩] @racket[􏿰􏾩] @racket[􏻿􏾩/以􏾝]}
@examples[#:eval (the-eval)
(名 str (句 #\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g))

(􏼘 str 1 #\H)
str

(􏼘/以􏾝 str 0 "ABCDEFG" 2 4)
str

(􏼅𰅡 str #\Z)
str
]

@section{􏶑 􏶒 􏼟}
@defideogr[􏶑 (合 句)]
@defideogr[􏶒 (句 亻 分)]
@defideogr[􏼟 (句 穴 非)]

@examples[#:eval (the-eval)
(􏶑 '("This" "Is" "String"))
(􏶑 '("This" "Is" "String") "")
(􏶑 '("This" "Is" "String") "-")

(􏶒 "This Is String")
(􏶒 "This Is String" "")
(􏶒 "This Is String" " ")
(􏶒 "This-Is-String" "-")
]
@section{句化􏿴 􏿴化句}
@examples[#:eval (the-eval)
(􏶑 '("This" "Is" "String"))
(􏶑 '("This" "Is" "String") "")
(􏶑 '("This" "Is" "String") "-")

(􏶒 "This Is String")
(􏶒 "This Is String" "")
(􏶒 "This Is String" " ")
(􏶒 "This-Is-String" "-")

(句化􏿴 "ThisIsString")
(􏿴化句 '(#\T #\h #\i #\s #\I #\s #\S #\t #\r #\i #\n #\g))
]

@section{􏶐, 􏶊, 􏶋}

@defideogr[􏶐 (句 㚘)]
@; resembles @zi[敂].
@defideogr[􏶊 (句 𡯂)]
@defzi[􏶋]{@zi[句] + @zitools-ref{立} + @zitools-ref{正}.}
@examples[#:eval (the-eval)
(􏶐 "ThisIsString" "Is" "Isnot")
(􏶊 "\n\r this is string \n\r\n")
(􏶊 "---this--is--string---" "-" #:repeat? #t) 89
(􏶋 "\n\rthis  is  \n\r string \n\r\n")
(􏶋 "---this--is--string---" "-" "+" #:repeat? #t #:trim? #f)
]

@section{句􏾺?, 句𨚞?, 邭?}
@eleph-note{@racket[邭] @racket[􏾺] @racket[𨚞]}
@; @bold{@litchar{􏼢}为新造字}
@; @defzi[本]{@same-as-cnchar-but["本" "root of tree" "from begining, from left"]}
@; @defzi[末]{@same-as-cnchar-but["末" "top of tree" "from ending, from right"]}

@examples[#:eval (the-eval)
(句􏾺? "ThisIsString" "Thi")
(句𨚞? "ThisIsString" "ing")

(邭? "ThisIsString" "sIs")
(邭? "ThisIsString" "Thi")
(邭? "ThisIsString" "ing")
]

@section{􏶉 􏶈 􏶇 􏶆}
@defzi[􏶉]{@zi[句] + @litchar{AA}.}
@defzi[􏶈]{@zi[句] + @litchar{aa}.}
@defzi[􏶇]{@zi[句] + @litchar{Aa}.}
@defzi[􏶆]{@zi[句] + (@litchar{ß} -> @litchar{ss}).}
@defzi[􏶅]{@zi[句] + (@litchar{a} in @litchar{A}).}
@examples[#:eval (the-eval)
(􏶉 "string upper case")
(􏶈 "string lower case")
(􏶇 "string title case")
(􏶆 "ßtring fold case")
]

@section[#:tag "string-base"]{ming/racket/base}
@defmapping[racket/base/string]
@defmodule[ming/racket/base]

@section[#:tag "string-additional"]{ming/racket/string}
@defmodule[ming/racket/string]

@defmapping[racket/string]
