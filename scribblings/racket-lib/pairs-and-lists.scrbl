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
               @elem{Returns a new list with elements produced from the input list.}
               @elem{@racket[伄] @racket[𰁣] @racket[攸] @racket[𰂋] @racket[偏] @racket[􏾜] @racket[􏾛] @racket[偅] @racket[𠆯] @racket[􏹈] @racket[仔?]}
               )
               (list
               @elem{@defcomponent[阝]}
               "serial subset"
               @elem{Returns a new list with elements serially produced from the input list.}
               @elem{@racket[􏾝] @racket[􏾺] @racket[𨚞] @racket[䢼] @racket[􏹋]}
               )
               (list
               @elem{@defcomponent[刂]}
               "broken subset"
               @elem{Returns a new list with removing some elements from the input list.}
               @elem{@racket[􏷵] @racket[􏷴] @racket[􏺊] @racket[􏾘] @racket[𠝤] @racket[􏹊] @racket[􏹇]}
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
               @elem{Implies the type of output data is values(@racket[並]).}
               @elem{@racket[􏾺分] @racket[𨚞分] @racket[䢼分] @racket[􏷳分] @racket[􏹈分]}
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

               (list @bold{Hybrid} @bold{-} @bold{-} @bold{-})
               (list
               @elem{@defhas[/入]}
               "function as input"
               @elem{Implies the type of input data is function.}
               @elem{@racket[攸/入] @racket[􏾺/入] @racket[𨚞/入]}
               )
         )]

@section[#:tag "pair-car-cdr-list-list*"]{双, 􏿴, 􏿫, 阴, 阳}
Abstractly, we can pair two data together. Integrally, it is called @racket[双]. Separately, the position where set the first data is call @racket[阳], the second is call @racket[阴].

Further more, if we put another @racket[双] to @racket[阴] position of the former @racket[双], we get a linked data. Likewise, the linked data can be extended as long as you want. By this way, if we leave @racket[阴] of the ending @racket[双] to be empty(@racket[空]), we get a data called @racket[􏿴]; if not, we call it @racket[􏿫].

@defzi[双]{@defzi/sub[又]{is a stick figure of @italic{human hand}}. Two human hand here stand for an object with including two holding data.}
@defzi[􏿴]{the reaching to left bottom @litchar{又} means multiple @zi{双} linked together, @litchar{㐅} means ending with empty(@racket[空]).}
@defzi[􏿫]{resembles @zi{􏿴} except substituting @litchar{㐅} with @litchar{又}, which means the ending position is not empty(@racket[空]).}
@defzi[阳]{@defzi/sub[日]{means sun, implicitly means the former part of an object, or the position aspect of an object.} Ref to @hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].}
@defzi[阴]{@defzi/sub[月]{means moon, implicitly means the secondary part of of an object, or the negative aspect of an object.} Ref to @hyperlink["https://en.wikipedia.org/wiki/Yin_and_yang" "wiki"].}

@examples[#:eval (the-eval)
(双 1 2)

(双 1 (双 2 (双 3 (双 4 空))))
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
@defzi[毌]{simplified from @litchar{贯}, which means @italic{append, going through a few objects and connect them together}.}
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
@defzi[􏼎]{ref to: @zi{弓}.}
@examples[#:eval (the-eval)
(􏼓 5 'foo)
(􏼎 5 並)
(􏼎 5 􏽊)
(􏼎 5 (入 (n)
        (􏼓 5 'foo)))
]

@section{弔, 弓, 􏹂, 𰁣, 􏹁}
@defzi[弓]{resembles @italic{ropes wraped on stick, thus ropes can be used to count how many circles wrapped}. Especially means @italic{the indexes} of an object in ming-lang.}
@defzi[弔]{simplified from @litchar{第} and resembles @italic{an stick wrapped with ropes, thus it can be used to ref to an specific wrap}. Especially means @italic{reference} in ming-lang.}
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

@section{􏷦, 􏷥, 􏷤, 􏷣, 􏷢, 􏷡, 􏷠, 􏷟, 􏷞, 􏷝}
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
(􏷦 '(1 2 3 4 5 6 7 8 9 10))
(􏷥 '(1 2 3 4 5 6 7 8 9 10))
(􏷤 '(1 2 3 4 5 6 7 8 9 10))
(􏷣 '(1 2 3 4 5 6 7 8 9 10))
(􏷝 '(1 2 3 4 5 6 7 8 9 10))
]

@section+elemref{末、􏹨}
返回􏿴中末尾位置的元素。
@margin-note{
@bold{@litchar{􏹨}为新造字}
@itemlist[
@item{@litchar{末}：见@racket[末]；}
@item{@litchar{双}：见@racket[双]；}
@; @item{@litchar{又}：@litchar{双}的简写，见@racket[双]。}
]
}
@examples[#:eval (the-eval)
(末 '(1 2 3 4))
(􏹨 '(1 2 3 4))
(􏹨 '(1 2 3 . 4))
]

@section+elemref{巨}
@margin-note{
@bold{@litchar{巨}为活用字}
@itemlist[
@item{@litchar{巨}：测量返回长度（本意是“木工用方尺做丈量”（圆是规，方是矩，固有“无规矩不成方圆”之说））。}
]
}
@margin-note{另见：@racket[􏹃]}
@examples[#:eval (the-eval)
(巨 '(a b c d e 3 f g))
]



@section+elemref{􏾺、𨚞，􏷵、􏷴，􏾺分、𨚞分，􏾺/入、𨚞/入，􏾺于?}
@margin-note{
@bold{
@litchar{􏾺}、@litchar{𨚞}为新造字 @linebreak{}
@litchar{􏷵}、@litchar{􏷴}为新造字
}
@itemlist[
@item{@litchar{左}：从左；}
@item{@litchar{右}：从右；}
@item{@litchar{口}：@litchar{右}的简写；}
@item{@litchar{阝}、@litchar{刂}见：@secref["list-rules"]。}
]
}
@margin-note{另见：@racket[􏺊]}
@examples[#:eval (the-eval)
(􏾺 '(a b c d e f g) 2)
(𨚞 '(a b c d e f g) 2)

(􏷵 '(a b c d e f g) 2)
(􏷴 '(a b c d e f g) 2)

(􏾺分 '(a b c d e f g) 2)
(𨚞分 '(a b c d e f g) 2)

(􏾺/入 '(8 4 a b 1 c d 2 e f g 3 5 9) 米?)
(𨚞/入 '(8 4 a b 1 c d 2 e f g 3 5 9) 米?)

(􏾺于? '(a b) '(a b c d e f g))
(􏾺于? '(a b z) '(a b c d e f g))
]

@section+elemref{䢼，􏷳分，䢼分}
@margin-note{
@bold{@litchar{䢼}、@litchar{􏷳}为新造字}
@itemlist[
@item{@litchar{共}：共同、共有；}
@item{@litchar{阝}、@litchar{刂}，见：@secref["list-rules"]。}
]
}
@examples[#:eval (the-eval)
(䢼 '(a b x y z) '(a b c d e f g))
(􏷳分 '(a b x y z) '(a b c d e f g))
(䢼分 '(a b x y z) '(a b c d e f g))
]


@section+elemref{𰂋，偏，􏾜，重、𠝤}
@margin-note{
@bold{
@litchar{𰂋}为新造字 @linebreak{}
@litchar{偏}为活用字 @linebreak{}
@litchar{􏾜}为新造字 @linebreak{}
@litchar{𠝤}为古活字
}
@itemlist[
@item{@litchar{间}：间以；}
@item{@litchar{扁}：扁平；}
@item{@litchar{糸}：乱（@litchar{紊}去掉声旁，@litchar{紊}是“乱”的意思（故有成语“有条不紊”））；}
@item{@litchar{重}：重复之元素；}
@item{@litchar{亻}、@litchar{刂}，见：@secref["list-rules"]。}
]
}

@margin-note{
另见：@racket[偅]
}

@examples[#:eval (the-eval)
(𰂋 '(a b c d) '和)
(偏 '((a b) (c d) (e f)))
(􏾜 '(a b c d e d c b a))

(重 '(a b c d e d c b a))
(𠝤 '(a b c d e d c b a))
]


@section+elemref{􏾛、𠆯}
@margin-note{
@bold{@litchar{􏾛}为新造字} @linebreak{}
@bold{@litchar{𠆯}为古活字}
@itemlist[
@item{@litchar{屰}：倒序（通@litchar{逆}，甲骨文、金文是“一个倒立的人”）；}
@item{@litchar{川}：理顺（类比@litchar{驯}、@litchar{训}而得造）。}
@item{@litchar{亻}，见：@secref["list-rules"]。}
]
}
@examples[#:eval (the-eval)
(􏾛 '(21 3 888 666 55 77 1000))
(𠆯 '(21 3 888 666 55 77 1000) <)
(𠆯 '(21 3 888 666 55 77 1000) >)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句<?)
(𠆯 '("cat" "dog" "chicken" "duck" "fox") 句>?)
]

@section+elemref{􏹋、􏹉、􏹊~、􏹊^，􏹅，􏹄，􏹌、􏹈，􏹇~、􏹇}
@margin-note{
@bold{
@litchar{􏹋}、@litchar{􏹊}、@litchar{􏹉}为新造字 @linebreak{}
@litchar{􏹌}、@litchar{􏹈}、@litchar{􏹇}为新造字 @linebreak{}
}
@itemlist[
@item{@litchar{彐}：寻找（@litchar{寻}的简写）；}
@item{@litchar{日}：取@racket[阳]；}
@item{@litchar{入}：入参是lambda(λ)函数（λ的汉字偏旁写法）；}
@item{@litchar{~}、@litchar{^}，@litchar{亻}、@litchar{刂}、@litchar{阝}，见：@secref["list-rules"]。}
]
}
@margin-note{另见：@racket[􏹊]，@racket[􏾘]，@racket[􏺈]、@racket[􏺇]}
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

@section+elemref{􏹈分，􏹈巨}
@margin-note{另见：@racket[巨]、@racket[􏹃]}
@examples[#:eval (the-eval)
(􏹈分 米? '(a b 1 c d 3 e 9 f))
(􏹈巨 米? '(a b 1 c d 3 e 9 f))
]

@section+elemref{各，佫，􏷱、􏷰，垎、右垎，佫􏹈、佫􏿝} @;􏷮，􏷭
@margin-note{
@bold{@litchar{佫}为古活字} @linebreak{}
@bold{@litchar{􏷱}为新造字} @linebreak{}
@bold{@litchar{􏷰}为新造字} @linebreak{}
@bold{@litchar{垎}为活用字}
@itemlist[
@item{@litchar{各}：表意，各个元素依次；}
@item{@litchar{亻}，见：@secref["list-rules"]；}
@item{@litchar{土}，表意，构建。见：@secref["list-rules"]；}
@item{@litchar{并}：见@racket[并]；}
@item{@litchar{戈}：见@racket[戈]；}
]
}
@margin-note{
为便理解，列下代码，两两等同：
@itemlist[
@item{@code{(佫 PROC (􏿴 a b c))}}
@item{@code{(􏿴 (PROC a) (PROC b) (PROC c))}}
@item{@code{(􏷱 PROC (􏿴 a b c))}}
@item{@code{(并 (PROC a) (PROC b) (PROC c))}}
@item{@code{(􏷰 PROC (􏿴 a b c))}}
@item{@code{(戈 (PROC a) (PROC b) (PROC c))}}
@item{@code{(垎 PROC z (􏿴 a b c))}}
@item{@code{(PROC c (PROC b (PROC a z)))}}
@item{@code{(右垎 PROC z (􏿴 a b c))}}
@item{@code{(PROC a (PROC b (PROC c z)))}}
]
}

@examples[#:eval (the-eval)
(各 行示 (􏿴 2 4 6 8))
(佫 􏽊 '(1 2 3 4))
(佫 + '(1 2 3 4) '(100 200 300 400))

(􏷱 􏻛? '(1 2 -3 4))
(􏷱 + '(1 2 3 4) '(100 200 300 400))

(􏷱 􏻚? '(1 2 -3 4))
(􏷰 + '(1 2 3 4) '(100 200 300 400))

(垎 + 0 '(1 2 -3 4))
(垎 双 '() '(1 2 -3 4))
(右垎 双 '() '(1 2 -3 4))

(佫􏹈 (入 (x) (并 (􏻛? x) (􏽊 x))) '(1 3 -4 5))
(佫􏿝 􏻿化􏿴 '(#(1) #(2 3) #(4)))
]


@section+elemref{佫之􏺗、佫之􏺘}
@examples[#:eval (the-eval)
(佫之􏺗 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(佫之􏺘 char->integer '(#\a #\y #\b #\k #\c #\j #\d))
(佫之􏺗 阳 '((3 pears) (1 banana) (2 apples)))
(佫之􏺘 阳 '((3 pears) (1 banana) (2 apples)))
]


@section+elemref{􏿴/组合、􏿴/排列组合，􏿴/笛卡尔积，􏿴/分组}
@examples[#:eval (the-eval)
(􏿴/组合 '(a b c))
(􏿴/排列组合 '(a b c))
(􏿴/笛卡尔积 '(1 2 3) '(a b c))
(􏿴/分组 米? '(1 a 2 b 3 c))
]


@section[#:tag "list-base"]{基础例程}
@defmodule[ming/racket/base]
@defmapping[racket/base/pairs-and-lists]

@section[#:tag "list-additional"]{扩展例程}
@defmodule[ming/racket/list]
@defmapping[racket/list]
