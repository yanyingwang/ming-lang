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
Originates from @secref["pairs" #:doc '(lib "scribblings/reference/reference.scrbl")] and Extends to @secref["ming-list"].

@section[#:tag "nameing-rules-of-pair-list"]{Naming Rules}
Extended from @secref["naming-rules"], specifically there are：
@tabular[@;#:sep @hspace[0]
         #:style 'boxed
         #:column-properties '(center)
         #:row-properties '(border)
         (list (list @bold{Ideograph} @bold{Connotation} @bold{Elucidation} @bold{Example})
               (list
               @elem{@zi[亻] as component}
               "general subset"
               @elem{Returns a new list with elements produced from the input list. (Implies the input data and output data are the same type.)}
               @elem{@rackets[伄 攸 𰂋 偏 􏾜 􏾛 偅 𠆯 􏹈 􏷍?]}
               )
               @; (list
               @; @elem{@defcomponent[彳]}
               @; "resembler"
               @; @elem{Returns a resemblant list of the input.}
               @; @elem{@racket[𢓜]}
               @; )
               (list
               @elem{@zi[阝] as component}
               "serial subset"
               @elem{Returns a new list with elements serially produced from the input list.(Implies the input data and output data are the same type.)}
               @elem{@racket[􏾝] @racket[􏾺] @racket[𨚞] @racket[􏹋]}
               )
               @; (list
               @; @elem{@defcomponent[􏸋]}
               @; "serial subset of lists"
               @; @elem{Returns a new list with elements serially produced from the input lists.(Implies the multiple input data and output data are the same type.)}
               @; @elem{@racket[左􏸑]}
               @; )
               (list
               @elem{@zi[刂] as component}
               "broken subset"
               @elem{Returns a new list with removing some elements from the input list.}
               @elem{@racket[􏷵] @racket[􏷴] @racket[􏺊] @racket[􏾘] @racket[𠝤] @racket[􏹊] @racket[􏹇]}
               )
               @; (list
               @; @elem{@defcomponent[􏸌]}
               @; "broken subset of lists"
               @; @elem{Returns a new list with removing some elements from the input lists.(Implies the multiple input data and output data are the same type.)}
               @; @elem{@racket[左􏸒]}
               @; )
               (list
               @elem{@zi[分] as component}
               "split input list to values"
               @elem{Implies the type of output data is values(@racket[並]).}
               @elem{@racket[􏸄] @racket[􏸃]}
               )
               @; (list
               @; @elem{@defcomponent[􏸍]}
               @; "split input lists to values"
               @; @elem{Implies input data is lists and the type of output data is values(@racket[並]).}
               @; @elem{@racket[􏸄] @racket[􏸃]}
               @; )
               (list
               @elem{@defcomponent[入]}
               @elem{same as @zi[/入]}
               @elem{Implies the type of input data is function.}
               @elem{@racket[􏹃] @racket[􏹌] @racket[􏹅] @racket[􏹇] @racket[􏹂]}
               )
               (list
               @elem{@zi[土] as component}
               @elem{produce data}
               @elem{Processes data and product new one, implies the type of output data is not same as input.}
               @elem{@racket[􏷎]}
               )
               (list
               @elem{@defsuffix[分]}
               "split data to values"
               @elem{@zi[分]}
               @elem{@racket[䢼分 􏹈分]}
               )
               @; (list
               @; @elem{@defsuffix[0]}
               @; "original function"
               @; @elem{Implies there is another function named with omitting @litchar{0}.}
               @; @elem{@racket[􏼓0]}
               @; )
               (list
               @elem{@defsuffix[*]}
               "strengthen"
               "Strengthen the process, thus the data of output may become longer, and the type may be changed accordingly."
               @; @elem{@racket[弓*]、@racket[􏼏*]}
               @elem{@racket[弓*] @racket[􏹂*] @racket[􏼏*]}
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
               @elem{@racket[􏷍/组合] @racket[􏷍/分组]}
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

@section[#:tag "pair-car-cdr-list-list*"]{双, 㐅, 􏿴, 􏿫, 阴, 阳}
Abstractly, we can pair two data together. Integrally, it is called @zi[双]. Separately, the position where set the first data is call @zi[阳], the second is call @zi[阴].

Further more, if we put another @racket[双] to @racket[阴] position of the former @racket[双], we get a linked data. Likewise, the linked data can be extended as long as you want. By this way, if we leave @racket[阴] of the ending @racket[双] to be empty(@racket[㐅]), we get a data called @racket[􏿴]; if not, we call it @racket[􏿫].


@defideogr[又 "elment" "又" "Right hand, borrowed as again in simplified chinese."]{
Resembles @italic{human's hand that is holding an object}.
@ziexamples[双 􏿫]
}
@nested[#:style "inset"
@defideogr[又LB "links pairs, linked pairs" #f #f]{
Is reaching from Left through Bottom to right, we write it in this way to stand multiple @racket[双] linked together.
@ziexamples[􏿴 􏿫]
}
]

@defideogr[㐅 "null" #f #f]{
Is same as @zi[穴], because @racket[㐅] is same as @racket[穴].
@ziexamples[㐅? 􏿴]
}

@defideogr[穴 "empty" "穴" "hole"]{
Simplifies from @zi[空], which means @italic{empty}.
@ziexamples[穴?]
}

@defideogr[空 "empty" "空" "empty"]


@defideogr[双 (又 又) "cons, pair" "双" "pair"]{
Two human hand here stand for an object with including two holding data.
}

@defideogr[􏿴 (又LB 㐅) "list" #f #f]{
The reaching from Left through Bottom to right @zi[又] means @italic{multiple @racket[双] linked together}; @litchar{㐅} means ending with empty(@zi[㐅]).
}
@nested[#:style "inset"]{
@defideogr[􏿴BR "resembles 􏿴" #f #f]{
Has the similar function process as it resembles and the type of output is same as @racket[􏿴] accordingly.
@ziexamples[􏼓 􏼎 􏼏 􏿝]
}
}

@defideogr[􏿫 (又LB 又) "list with last element be pair" #f #f]{
Resembles @zi[􏿴] except substituting @litchar{㐅} with @litchar{又}, which means the ending position is not empty(@zi[㐅]).
}
@nested[#:style "inset"]{
@defideogr[􏿫BR #f #f #f]{
Has the similar function process as it resembles and the type of output is same as @racket[􏿫] accordingly.
@ziexamples[􏿜]
}
}

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

]

@section{阴阳+-}
@defideogr[日 "the former one" "日" "sun"]{
Original means @italic{sun} in Chinese, borrowed to means the former part of an object in Ming, or the positive part of an object in Ming.
@hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].
}

@defideogr[月 "the latter one" "月" "moon"]{
means moon, implicitly means the secondary part of of an object, or the negative part of an object in Ming.
@hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].
}

@defideogr[阳 (阝 日) "the first half part" "阳" "sun, positive"]
@defideogr[阴 "the last half part" "阴" "negative"]

@defideogr[(阳+ 阴+ 阳- 阴-) ((阳 阴) (+ -)) "mutiple parenthesis nested 阴 or 阳 in reverse order" #f #f]{
For the case of procedures that start with @zi[阴] or @zi[阳] and following with @litchar{+} or @litchar{-}, @litchar{+} stands for @zi[阳] and @litchar{-} stands for @zi[阴].

For example, @code{(阴+-- lst)} is short for @code{(阴 (阴 (阳 (阴 lst))))}.
}

@examples[#:eval (the-eval)
(阴+ '(1 2 3 4))
(阴-+ '(1 2 3 4))

(阳 '((1 1.1) 2 3 4))
(阳+ '((1 1.1) 2 3 4))
(阳-+ '((1 1.1) 2 3 4))
]


@section{􏿝, 􏿜}
@defideogr[􏿝 (毌 􏿴BR) #f #f #f]
@defideogr[􏿜 (毌 􏿫BR) #f #f #f]
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
@defideogr[攸 (亻 丨 攵) #f #f #f]{
@litchar{丨} implies only change one value, thus the input values are in type of @racket[number?] and @racket[any?].
}
@eleph-note{@racket[𰁦] @racket[􏾩] @racket[𢪛]}
@examples[#:eval (the-eval)
(攸 '(10 15 20 25) 1 1555)
(攸/入 '(10 15 20 25) 1 􏽊)
]


@section{􏼏, 􏼏*}
@defideogr[􏼏 (米 􏿴BR) #f #f #f]
@examples[#:eval (the-eval)
(􏼏 10)
(􏼏 10 20)
(􏼏 10 20 2)
(􏼏* 10 20)
(􏼏* 10 20 2)
]

@section{􏼓, 􏼎}
@defideogr[􏼓 (三 􏿴) #f #f #f]
@defideogr[􏼎 (弓 􏿴) #f #f #f]
@examples[#:eval (the-eval)
(􏼓 5 'foo)
(􏼎 5 並)
(􏼎 5 􏽊)
(􏼎 5 (入 (n)
        (􏼓 5 'foo)))
]

@section{弔, 弓,弓*, 􏹂, 􏹂*}
@defideogr[弓 "index" "弓" "bow"]{
Resembles @italic{a rope wraped on stick, thus this rope can be used to count how many circles it is wrapping on stick}. Especially means @italic{the index} of an object in Ming.
}
@defideogr[􏹂 (弓 入) #f #f #f]
@defideogr[弔 "refer a vlaue from index" "第" "refer, rank"]{
simplified from @litchar{第} and resembles @italic{an stick wrapped with a rope in circles, thus it can be used to ref to an specific circle}. Especially means @italic{refer} in Ming.
}
@eleph-note{
@racket[伄] @racket[􏾘] @racket[􏾝] @;，@racket[弓*]、@racket[弓*/入]
}
@examples[#:eval (the-eval)
(弔 '(a b c d e c f) 2)

(弓 '(a b c d e c f) 'c)
(弓* '(a b c d e c f) 'c)

(􏹂 '(a b 11 d 22 c f) 米?)
(􏹂* '(a b 11 d 22 c f) 米?)
]

@section{􏷜, 􏷛, 􏷚, 􏷙, 􏷘, 􏷗, 􏷖, 􏷕, 􏷔, 􏷓}
@defideogr[一 "one" "一" "one"]
@defideogr[二 "two" "二" "two"]
@defideogr[三 "three" "三" "three"]{
Note that, meaning is changed to @italic{duplicated elements} if is used with @zi[􏿴BR]. e.g., @racket[􏼓].
}
@defideogr[四 "four" "四" "four"]
@defideogr[五 "five" "五" "five"]
@defideogr[六 "six" "六" "six"]
@defideogr[七 "seven" "七" "seven"]
@defideogr[八 "eight" "八" "eight"]
@defideogr[九 "nine" "九" "nine"]
@defideogr[十 "ten" "十" "ten"]{
Note that, meaning is changed to @italic{a few of fixed length elements} if is used within @zi[􏻿].
}
@examples[#:eval (the-eval)
(􏷜 '(1 2 3 4 5 6 7 8 9 10))
(􏷛 '(1 2 3 4 5 6 7 8 9 10))
(􏷚 '(1 2 3 4 5 6 7 8 9 10))
(􏷙 '(1 2 3 4 5 6 7 8 9 10))
(􏷓 '(1 2 3 4 5 6 7 8 9 10))
]

@section{末, 􏹨}
@defideogr[􏹨 (末 双) #f #f #f]
@examples[#:eval (the-eval)
(末 '(1 2 3 4))
(􏹨 '(1 2 3 4))
(􏹨 '(1 2 3 . 4))
]

@section{巨}
@eleph-note{@racket[􏹃]}
@examples[#:eval (the-eval)
(巨 '(a b c d e 3 f g))
]


@section{􏾺,𨚞, 􏷵,􏷴, 􏸄,􏸃, 􏾺/入,𨚞/入, 􏾺?}
@defideogr[左 "left, from left" "左" "left"]
@defideogr[右 "right, from right" "右" "right"]
@defideogr[分 "split" "分" "split"]{
Implies the output type is @zi[並].
}
@defideogr[􏾺 (左 阝) #f #f #f]
@defideogr[􏷵 (左 刂) #f #f #f]
@defideogr[􏸃 (右 分) #f #f #f]
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

@section{䢼, 􏷳, 䢼分}
@defideogr[共 "share" "共" "share, together"]{
Implies the input data are more than one and have the same type.
}
@defideogr[䢼 (共 阝) #f #f #f]
@defideogr[􏷳 (共 刂) #f #f #f]
@examples[#:eval (the-eval)
(䢼 '(a b x y z) '(a b c d e f g))
(􏷳 '(a b x y z) '(a b c d e f g))
(䢼分 '(a b x y z) '(a b c d e f g))
]


@section{𰂋，偏，􏾜，重、𠝤}
@defzi[间]{@stands-for{insert between}.}
@defzi[扁]{@stands-for{faltten}.}
@defzi[糸]{@simplf-from{紊}, @stands-for{shuffle}.}
@defzi[重]{@stands-for{duplication}.}
@eleph-note{@racket[偅]}

@examples[#:eval (the-eval)
(𰂋 '(a b c d) '和)
(偏 '((a b) (c d) (e f)))
(􏾜 '(a b c d e d c b a))

(重 '(a b c d e d c b a))
(𠝤 '(a b c d e d c b a))
]


@section{􏾛、𠆯}
@defzi[屰]{resembles @italic{the picture of person standing on his head}, @stands-for{reverse} in ming-lang.}
@defzi[川]{@simplf-from{顺}, @stands-for{in order}.}
@examples[#:eval (the-eval)
(􏾛 '(21 3 888 666 55 77 1000))
(𠆯 '(21 3 888 666 55 77 1000) <)
(𠆯 '(21 3 888 666 55 77 1000) >)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句<?)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句>?)
]

@section{􏹋、􏹉、􏹊~、􏹊^，􏹅，􏹄，􏹌、􏹈，􏹇~、􏹇}
@defzis[􏹅/􏹇/􏹄/􏹈/􏹌/􏹊]{@defzi/sub[彐]{@simplf-from{寻}, @stands-for{find, search}.}}
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

@section{􏷒,􏷑, 􏷐,􏷏，􏷎,右􏷎} @;􏷮，􏷭
@defzi[􏷒]{@defzi/sub[夂]{@simplf-from{各}, @stands-for{each}.}}
@defzi[􏷑]{@code{(􏷑 PROC (􏿴 a b c))} is simplified from: @code{(􏿴 (PROC a) (PROC b) (PROC c))}}
@defzi[􏷐]{@code{(􏷐 PROC (􏿴 a b c))} is simplf-from: @code{(并 (PROC a) (PROC b) (PROC c))}}
@defzi[􏷏]{@code{(􏷏 PROC (􏿴 a b c))} is simplified from: @code{(戈 (PROC a) (PROC b) (PROC c))}}
@defzi[􏷎]{@code{(􏷎 PROC z (􏿴 a b c))} is simplified from: @code{(PROC c (PROC b (PROC a z)))} @linebreak{} @code{(右􏷎 PROC z (􏿴 a b c))} is simplified from: @code{(PROC a (PROC b (PROC c z)))}}

@examples[#:eval (the-eval)
(􏷒 行示 (􏿴 2 4 6 8))
(􏷑 􏽊 '(1 2 3 4))
(􏷑 + '(1 2 3 4) '(100 200 300 400))

(􏷐 􏻛? '(1 2 -3 4))
(􏷐 + '(1 2 3 4) '(100 200 300 400))

(􏷐 􏻚? '(1 2 -3 4))
(􏷏 + '(1 2 3 4) '(100 200 300 400))

(􏷎 + 0 '(1 2 -3 4))
(􏷎 双 '() '(1 2 -3 4))
(右􏷎 双 '() '(1 2 -3 4))
]


@section{􏷑􏹈,􏷑􏿝, 􏷑􏺗、􏷑􏺘}
@examples[#:eval (the-eval)
(􏹈􏷑 (入 (x) (并 (􏻛? x) (􏽊 x))) '(-2 -1 0 1 2))
(􏷑􏿝 􏻿化􏿴 '(#(1) #(2 3) #(4)))

(􏷑􏺗 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(􏷑􏺘 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(􏷑􏺗 阳 '((3 pears) (1 banana) (2 apples)))
(􏷑􏺘 阳 '((3 pears) (1 banana) (2 apples)))
]


@section+elemref{􏷍/组合、􏷍/排列组合，􏷍/笛卡尔积，􏷍/分组}
@examples[#:eval (the-eval)
(􏷍/组合 '(a b c))
(􏷍/排列组合 '(a b c))
(􏷍/笛卡尔积 '(1 2 3) '(a b c))
(􏷍/分组 米? '(1 a 2 b 3 c))
]


@section[#:tag "list-base"]{ming/racket/base}
@defmodule[ming/racket/base]
@defmapping[racket/base/pairs-and-lists]

@section[#:tag "list-additional"]{ming/racket/list}
@defmodule[ming/racket/list]
@defmapping[racket/list]
