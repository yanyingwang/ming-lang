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
Originates from @secref["strings" #:doc '(lib "scribblings/reference/reference.scrbl")] and Extends to @secref["ming-string"].


@section{句 􏽀 􏽁, 句? 􏽀? 􏽁?, 􏼟?}
@eleph-note{@zi[􏷂] @zi[􏶿]}

@defideogr[句 "string" "句" "sentences"]{
@ziexamples[句? 句化􏿴 􏿴化句]

@defsubideogr[句B "output type is string" 句]{
@ziexamples[􏽀 􏼅 􏼄 􏼃 􏼂]
}

@defsubideogr[句L "input type is string" 句]{
@ziexamples[􏺕 􏼭 􏶒 􏶐 􏶊 􏶋 邭 􏶉 􏶈 􏶇 􏶆]
}

@defsubideogr[句R "output type is string" 句]{
@ziexamples[􏶑]
}
}


@defzis[􏽁/􏽀]{@zi[山]/@zi[𭕄 ] + @zi[句]. resembles @zi[句], but is specified to be immutable or mutable.}
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
@defzi[􏼅]{@zi[三] + @zi[句]}
@defzi[􏼄]{@zi[弓] + @zi[句]}
@examples[#:eval (the-eval)
(􏼅 5 #\t)
(􏼄 5 数化字)
]

@section{􏼃, 􏼁, 􏼂}
@eleph-note{@racket[􏿝] @racket[􏿜]}
@defzi[􏼃]{@zi[毌] + @zi[句]}
@defzi[􏼂]{@zi[毌] + @zi[又] + @zi[句]. @zi[毌]+@zi[又]: means append inputs with last input being @zi[􏿴] type.}
@defzi[􏼁]{@zi[山] + @zi[􏼃]}

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
@defzi[􏺕]{@zi[句] + @zi[巨]. @defzi/sub[巨]{@same-as-cnchar-but["巨" "huge" "measure, length"]}}
@defzi[􏼭]{@zi[句] + @zi[弔].}
@defzi[邭]{@zi[句] + @zi[阝]. Shorts for @litchar{句􏾝}, @stands-for{substring}.}
@; @margin-note{另见：@racket[邭*]}
@examples[#:eval (the-eval)
(􏺕 "ThisIsString")

(􏼭 "ThisIsString" 3)

(邭 "ThisIsString" 3)
(邭 "ThisIsString" 3 8)
]


@section{􏼘, 􏼘/以􏾝, 􏼅𰅡}
@; @bold{@litchar{拘}为古活字} @linebreak{}
@; @bold{@litchar{􏼿}为古活字}
@defzi[􏼘]{ @zi[扌] + @zi[句] + @zi[攵] }
@; @bold{@litchar{邭}为古活字} @linebreak{}
@defzi[𰅡]{ @zi[扌] + @zi[匕]. Resembles @zi[化], @stands-for{Convert data to a specific type by modifing the original data.}}

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
@defzi[􏶑]{@zi[合] + @zi[句].}
@defzi[􏶒]{@zi[句] + @zi[亻] + @zi[分].}
@defzi[􏼟]{@zi[句] + @zi[穴] + @zi[非].}

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
@defzi[􏶐]{resembles @zi[敂]. Vertical @defzi/sub[㚘]{@same-as-cnchar["替" "substitue"]}.}
@defzi[􏶊]{@zi[句] + @zi[𡯂]. @defzi/sub[𡯂]{@simplified-from-cnchar-and["秃" "naked, not sharp" "a state of an object with removing something from its begining and ending"]}.}
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
