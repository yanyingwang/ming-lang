#lang scribble/manual

@(require (for-label racket ming ming/list)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/list ming/racket/vector ming/list)))

@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "pairs-and-lists"]{双 and 􏿴}
@margin-note{Extention：@secref["ming-list"]}
Originate: @secref["pairs" #:doc '(lib "scribblings/reference/reference.scrbl")]


@section[#:tag "nameing-rules-of-pair-list"]{Naming Rules}

To extend @secref["naming-rules"], specifically there are：
@tabular[@;#:sep @hspace[0]
         #:style 'boxed
         #:column-properties '(center)
         #:row-properties '(border)
         (list (list @bold{Character} @bold{Connotation} @bold{Elucidation} @bold{Example})
               (list
               @elem{@defradical[􏷫]}
               @elem{resembles @racket[􏿴]}
               @elem{Has the similar function process as it resembling and the type of output is same as @racket[􏿴] accordingly.}
               @elem{@racket[􏼓] @racket[􏼎] @racket[􏼏] @racket[􏿝]}
               )
               (list
               @elem{@defradical[􏷩]}
               @elem{resembles @racket[􏿫]}
               @elem{Has the similar function process as it resembling and the type of output is same as (@racket[􏿫]) accordingly.}
               @elem{@racket[􏿜]}
               )
               (list
               @elem{@defcomponent[亻]}
               "general subset"
               @elem{Returns a new list with elements produced from the input list.(Implies the input data and output data are the same type.)}
               @elem{@racket[伄] @racket[𰁣] @racket[攸] @racket[𰂋] @racket[偏] @racket[􏾜] @racket[􏾛] @racket[偅] @racket[𠆯] @racket[􏹈] @racket[仔?]}
               )
               (list
               @elem{@defcomponent[彳]}
               "resembler"
               @elem{Returns a resemblant list of the input.}
               @elem{@racket[𢓜]}
               )
               (list
               @elem{@defcomponent[阝]}
               "serial subset"
               @elem{Returns a new list with elements serially produced from the input list.(Implies the input data and output data are the same type.)}
               @elem{@racket[􏾝] @racket[􏾺] @racket[𨚞] @racket[􏹋]}
               )
               (list
               @elem{@defcomponent[􏸋]}
               "serial subset of lists"
               @elem{Returns a new list with elements serially produced from the input lists.(Implies the multiple input data and output data are the same type.)}
               @elem{@racket[􏸇]}
               )
               (list
               @elem{@defcomponent[刂]}
               "broken subset"
               @elem{Returns a new list with removing some elements from the input list.}
               @elem{@racket[􏷵] @racket[􏷴] @racket[􏺊] @racket[􏾘] @racket[𠝤] @racket[􏹊] @racket[􏹇]}
               )
               (list
               @elem{@defcomponent[􏸌]}
               "broken subset of lists"
               @elem{Returns a new list with removing some elements from the input lists.(Implies the multiple input data and output data are the same type.)}
               @elem{@racket[􏸈]}
               )
               (list
               @elem{@defcomponent[分]}
               "split input list to values"
               @elem{Implies the type of output data is values(@racket[並]).}
               @elem{@racket[􏸄] @racket[􏸃]}
               )
               (list
               @elem{@defcomponent[􏸍]}
               "split input lists to values"
               @elem{Implies input data is lists and the type of output data is values(@racket[並]).}
               @elem{@racket[􏸄] @racket[􏸃]}
               )
               (list
               @elem{@defcomponent[入]}
               @elem{same as @zi{/入}}
               @elem{Implies the type of input data is function.}
               @elem{@racket[􏹃] @racket[􏹌] @racket[􏹅] @racket[􏹇] @racket[􏹂] @racket[􏹁]}
               )
               (list
               @elem{@defcomponent[土]}
               @elem{product data}
               @elem{Manufactures data and product new one, implies the type of output data is not same as input.}
               @elem{@racket[垎]}
               )
               (list @bold{Phrase} @bold{-} @bold{-} @bold{-})
               (list
               @elem{@defsuffix[分]}
               "split data to values"
               @elem{@zi{分}}
               @elem{@racket[􏹈分]}
               )
               (list
               @elem{@defsuffix[0]}
               "original function"
               @elem{Implies there is another function named with omitting @litchar{0}.}
               @elem{@racket[􏼓0]}
               )
               (list @bold{Punctuation} @bold{-} @bold{-} @bold{-})
               (list
               @elem{@defsuffix[*]}
               "strengthen"
               "Strengthen the process, thus the output data may become longer."
               @; @elem{@racket[弓*]、@racket[􏼏*]}
               @elem{@racket[􏼏*]}
               )
               (list
               @elem{@defsuffix[~]}
               "soften"
               "Soften the process, thus the output data shorter."
               @elem{@racket[􏹊~] @racket[􏹇~]}
               )
               @; (list
               @; @elem{以@bold{@litchar{v}}结尾}
               @; @elem{加强力度（且改变出参成@racket[􏿴]）}
               @; @elem{出参内容更加丰富且被封装成@racket[􏿴]数据结构}
               @; @elem{@racket[引v]}
               @; )
               (list
               @elem{@defsuffix[^]}
               @elem{list as input}
               @elem{Implies the type of input data is list.}
               @elem{@racket[􏹊^] @racket[伄^] @racket[􏾘^]}
               )
               @; (list
               @; @elem{以@litchar{􏿴}结尾}
               @; @elem{构造生成@racket[􏿴]数据}
               @; @elem{出参数据结构是@racket[􏿴]}
               @; @elem{@racket[序􏿴]、@racket[复􏿴]、@racket[𥸬􏿴]}
               @; )
               (list
               @elem{@definsert[/]}
               @elem{extend prefix}
               @elem{Suffix of @litchar{/} can be considered as an extending explanation of its prefix.}
               @elem{@racket[􏿴/组合] @racket[􏿴/分组]}
               )
               (list
               @elem{@defsuffix[?]}
               @elem{boolean as output}
               @elem{Implies the type of output data is boolean.}
               @elem{@racket[双?] @racket[􏿴?] @racket[􏿳?]}
               )

               (list @bold{Hybrid} @bold{-} @bold{-} @bold{-})
               (list
               @elem{@defhas[/入]}
               "function as input"
               @elem{Implies the type of input data is function.}
               @elem{@racket[攸/入] @racket[􏾺/入] @racket[𨚞/入]}
               )
         )]

@section[#:tag "pair-car-cdr-list-list*"]{双, 㐅, 􏿴, 􏿫, 阴, 阳 }
Abstractly, we can pair two data together. Integrally, it is called @racket[双]. Separately, the position where set the first data is call @racket[阳], the second is call @racket[阴].

Further more, if we put another @racket[双] to @racket[阴] position of the former @racket[双], we get a linked data. Likewise, the linked data can be extended as long as you want. By this way, if we leave @racket[阴] of the ending @racket[双] to be empty(@racket[㐅]), we get a data called @racket[􏿴]; if not, we call it @racket[􏿫].

@defzi[双]{@defzi/sub[又]{resembles @italic{the picture of human's right hand trying to hold an object}}. Two human hand here stand for an object with including two holding data.}
@defzi[㐅]{@simplified-from{空}, @means{empty}.}
@defzi[􏿴]{the reaching to left bottom @litchar{又} means multiple @zi{双} linked together, @litchar{㐅} means ending with empty(@zi{㐅}).}
@defzi[􏿫]{resembles @zi{􏿴} except substituting @litchar{㐅} with @litchar{又}, which means the ending position is not empty(@zi{㐅}).}
@defzi[阳]{@defzi/sub[日]{means sun, implicitly means the former part of an object, or the position aspect of an object.} Ref to @hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].}
@defzi[阴]{@defzi/sub[月]{means moon, implicitly means the secondary part of of an object, or the negative aspect of an object.} Ref to @hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].}

@examples[#:eval (the-eval)
(双 1 2)

(双 1 (双 2 (双 3 (双 4 㐅))))
(􏿴 1 2 3 4)

(双 1 (双 2 (双 3 4)))
(􏿫 1 2 3 4)
(􏿫 1 2 3 '(4))

(阳 '(1 . 2))
(阴 '(1 . 2))

(阳 '(1 2 3 4))
(阴 '(1 2 3 4))
(阴之阳 '(1 2 3 4))
(阴之阴阳 '(1 2 3 4))

(阳 '((1 1.1) 2 3 4))
(阳之阳 '((1 1.1) 2 3 4))
(阳之阴阳 '((1 1.1) 2 3 4))
]

@section{􏿝, 􏿜}
@defzis[􏿝/􏿜]{@defzi/sub[毌]{simplified from @litchar{贯}, which means @italic{append, going through a few objects and connect them together}.}}
@examples[#:eval (the-eval)
(􏿴 1 2 3 4)
(􏿝 '(1) '(2) '(3) '(4))
(􏿝 '(1) '(2 3 4) '(5 6) '(7))
(􏿝 '(a b) 'c)
(􏿝 '(a b) '(c . d))
(􏿝 '() 'a)
(􏿝 'a)

(􏿫 1 2 3 4)
(􏿜 '(1) '(2) '(3) '(4))
(􏿜 '(1) '(2 3 4) '(5 6) '(7))

(􏿫 1 2 3 '(4))
(􏿜 '(1) '(2) '(3) '((4)))
(􏿜 '(1) '(2 22) '(3 33) '((4 44)))
(􏿜 '(1) '(2 22) '((3 33)) '((4 44)))
(􏿜 '(a b) '(c))
(􏿜 '(a b) '((c . d)))
(􏿜 '() '(a))
(􏿜 '(a))
]


@section{攸}
@defzi[攸]{@defzi/sub[攵]{means @italic{raping over something to make it changing itself}, especially means @italic{set value}.}}
@examples[#:eval (the-eval)
(攸 '(10 15 20 25) 1 1555)
(攸/入 '(10 15 20 25) 1 􏽊)
]


@section{􏼏, 􏼏*}
@defzi[􏼏]{@defzi/sub[米]{means @italic{numbers}, ref to: @secref["numbers"]}.}

@examples[#:eval (the-eval)
(􏼏 10)
(􏼏 10 20)
(􏼏 10 20 2)
(􏼏* 10 20)
(􏼏* 10 20 2)
]

@section{􏼓, 􏼎}
@defzi[􏼓]{@defzi/sub[三]{@ori-esp-means["three" "duplicate data"]}}
@defzi[􏼎]{@zi{弓}.}
@examples[#:eval (the-eval)
(􏼓 5 'foo)
(􏼎 5 並)
(􏼎 5 􏽊)
(􏼎 5 (入 (n)
        (􏼓 5 'foo)))
]

@section{弔, 弓, 􏹂, 𰁣, 􏹁}
@defzi[弓]{resembles @italic{a rope wraped on stick, thus this rope can be used to count how many circles it is wrapping on stick}. Especially means @italic{the indexes} of an object in ming-lang.}
@defzi[弔]{simplified from @litchar{第} and resembles @italic{an stick wrapped with a rope in circles, thus it can be used to ref to an specific circle}. Especially means @italic{reference} in ming-lang.}
@eleph-note{
@racket[伄] @racket[􏾘] @racket[􏾝] @;，@racket[弓*]、@racket[弓*/入]
}
@examples[#:eval (the-eval)
(弔 '(a b c d e c f) 2)

(弓 '(a b c d e c f) 'c)
(𰁣 '(a b c d e c f) 'c)

(􏹂 '(a b 11 d 22 c f) 米?)
(􏹁 '(a b 11 d 22 c f) 米?)
]

@section{􏷜, 􏷛, 􏷚, 􏷙, 􏷘, 􏷗, 􏷖, 􏷕, 􏷔, 􏷓}
@defzi[一]{@means{one}.}
@defzi[二]{@means{two}.}
@defzi[三]{@means{three}.}
@defzi[四]{@means{four}.}
@defzi[五]{@means{five}.}
@defzi[六]{@means{six}.}
@defzi[七]{@means{seven}.}
@defzi[八]{@means{eight}.}
@defzi[九]{@means{nine}.}
@defzi[十]{@means{ten}.}
@examples[#:eval (the-eval)
(􏷜 '(1 2 3 4 5 6 7 8 9 10))
(􏷛 '(1 2 3 4 5 6 7 8 9 10))
(􏷚 '(1 2 3 4 5 6 7 8 9 10))
(􏷙 '(1 2 3 4 5 6 7 8 9 10))
(􏷓 '(1 2 3 4 5 6 7 8 9 10))
]

@section{末, 􏹨}
@defzi[末]{@ori-esp-means["treetop" "last"]{(@litchar{木} @means{tree or wood}, @litchar{本} @means{tree root.})}}
@examples[#:eval (the-eval)
(末 '(1 2 3 4))
(􏹨 '(1 2 3 4))
(􏹨 '(1 2 3 . 4))
]

@section{巨}
@defzi[巨]{simplified from @litchar{矩}, @ori-esp-means["straightedge, ruler" "measure length"]}
@eleph-note{@racket[􏹃]}
@examples[#:eval (the-eval)
(巨 '(a b c d e 3 f g))
]



@section{􏾺,𨚞, 􏷵,􏷴, 􏸄,􏸃, 􏾺/入,𨚞/入, 􏾺?}
@defzis[􏾺/􏷵/􏸄]{@defzi/sub[左]{@means{left}.}}
@defzis[𨚞/􏷴/􏸃]{@defzi/sub[右]{@means{right}.}}
@eleph-note{@racket[􏺊]}
@examples[#:eval (the-eval)
(􏾺 '(a b c d e f g) 2)
(𨚞 '(a b c d e f g) 2)

(􏷵 '(a b c d e f g) 2)
(􏷴 '(a b c d e f g) 2)

(􏸄 '(a b c d e f g) 2)
(􏸃 '(a b c d e f g) 2)

(􏾺/入 '(8 4 a b 1 c d 2 e f g 3 5 9) 米?)
(𨚞/入 '(8 4 a b 1 c d 2 e f g 3 5 9) 米?)

(􏾺? '(a b) '(a b c d e f g))
(􏾺? '(a b z) '(a b c d e f g))
]

@section{􏸇, 􏸈, 􏸉}
@defzis[􏸇/􏸈/􏸉]{@zi{左}.}
@examples[#:eval (the-eval)
(􏸇 '(a b x y z) '(a b c d e f g))
(􏸈 '(a b x y z) '(a b c d e f g))
(􏸉 '(a b x y z) '(a b c d e f g))
]


@section{𰂋，偏，􏾜，重、𠝤}
@defzi[间]{@means{insert between}.}
@defzi[扁]{@means{faltten}.}
@defzi[糸]{@simplified-from{紊}, @means{shuffle}.}
@defzi[重]{@means{duplication}.}
@eleph-note{@racket[偅]}

@examples[#:eval (the-eval)
(𰂋 '(a b c d) '和)
(偏 '((a b) (c d) (e f)))
(􏾜 '(a b c d e d c b a))

(重 '(a b c d e d c b a))
(𠝤 '(a b c d e d c b a))
]


@section{􏾛、𠆯}
@defzi[屰]{resembles @italic{the picture of person standing on his head}, @means{reverse} in ming-lang.}
@defzi[川]{@simplified-from{顺}, @means{in order}.}
@examples[#:eval (the-eval)
(􏾛 '(21 3 888 666 55 77 1000))
(𠆯 '(21 3 888 666 55 77 1000) <)
(𠆯 '(21 3 888 666 55 77 1000) >)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句<?)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句>?)
]

@section{􏹋、􏹉、􏹊~、􏹊^，􏹅，􏹄，􏹌、􏹈，􏹇~、􏹇}
@defzis[􏹅/􏹇/􏹄/􏹈/􏹌/􏹊]{@defzi/sub[彐]{@simplified-from{寻}, @means{find, search}.}}
@eleph-note{@racket[􏹊] @racket[􏾘] @racket[􏺈] @racket[􏺇]}
@examples[#:eval (the-eval)
(􏹋 'c '(a b c d e f))
(􏹉 'c '((a b) (c d) (e f)))
(􏹊~ 'c '(a b c d e c f))
(􏹊^ '(c e) '(a b c d e c f))

(􏹌 米? '(a b 1 c d 3 e 9 f))
(􏹈 米? '(a b 1 c d 3 e 9 f))

(􏹅 米? '(a b 1 c d 3 e 9 f))
(􏹄 米? '((a b) (1 d) (j k) (8 f)))

(􏹇 米? '(a b 1 c d 3 e 9 f))
(􏹇~ 米? '(a b 1 c d 3 e 9 f))
]

@section{􏹈分，􏹈巨}
@eleph-note{@racket[巨] @racket[􏹃]}
@examples[#:eval (the-eval)
(􏹈分 米? '(a b 1 c d 3 e 9 f))
(􏹈巨 米? '(a b 1 c d 3 e 9 f))
]

@section{各,𢓜, 􏷱,􏷰，垎,右垎} @;􏷮，􏷭
@defzi[各]{@means{each}.}
@defzi[𢓜]{@code{(𢓜 PROC (􏿴 a b c))} is simplified from: @code{(􏿴 (PROC a) (PROC b) (PROC c))}}
@defzi[􏷱]{@code{(􏷱 PROC (􏿴 a b c))} is simplified-from: @code{(并 (PROC a) (PROC b) (PROC c))}}
@defzi[􏷰]{@code{(􏷰 PROC (􏿴 a b c))} is simplified from: @code{(戈 (PROC a) (PROC b) (PROC c))}}
@defzi[垎]{@code{(垎 PROC z (􏿴 a b c))} is simplified from: @code{(PROC c (PROC b (PROC a z)))} @linebreak{} @code{(右垎 PROC z (􏿴 a b c))} is simplified from: @code{(PROC a (PROC b (PROC c z)))}}

@examples[#:eval (the-eval)
(各 行示 (􏿴 2 4 6 8))
(𢓜 􏽊 '(1 2 3 4))
(𢓜 + '(1 2 3 4) '(100 200 300 400))

(􏷱 􏻛? '(1 2 -3 4))
(􏷱 + '(1 2 3 4) '(100 200 300 400))

(􏷱 􏻚? '(1 2 -3 4))
(􏷰 + '(1 2 3 4) '(100 200 300 400))

(垎 + 0 '(1 2 -3 4))
(垎 双 '() '(1 2 -3 4))
(右垎 双 '() '(1 2 -3 4))
]


@section{𢓜􏹈,𢓜􏿝, 𢓜􏺗、𢓜􏺘}
@examples[#:eval (the-eval)
(􏹈𢓜 (入 (x) (并 (􏻛? x) (􏽊 x))) '(-2 -1 0 1 2))
(𢓜􏿝 􏻿化􏿴 '(#(1) #(2 3) #(4)))

(𢓜􏺗 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(𢓜􏺘 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(𢓜􏺗 阳 '((3 pears) (1 banana) (2 apples)))
(𢓜􏺘 阳 '((3 pears) (1 banana) (2 apples)))
]


@section+elemref{􏿴/组合、􏿴/排列组合，􏿴/笛卡尔积，􏿴/分组}
@examples[#:eval (the-eval)
(􏿴/组合 '(a b c))
(􏿴/排列组合 '(a b c))
(􏿴/笛卡尔积 '(1 2 3) '(a b c))
(􏿴/分组 米? '(1 a 2 b 3 c))
]


@section[#:tag "list-base"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/pairs-and-lists]

@section[#:tag "list-additional"]{ming/racket/list}
@defmodule[ming/racket/list]
@defmapping[racket/list]
