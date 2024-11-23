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


@section[#:tag "nameing-rules-of-string"]{Naming Rules}
Overall @secref["naming-rules"]

@tabular[@;#:sep @hspace[0]
         #:style 'boxed
         #:column-properties '(center)
         #:row-properties '(border)
         (list (list @bold{Rules} @bold{Connotation} @bold{Elucidation} @bold{Examples})
               (list
               @elem{@bold{@litchar{句}} as component on the bottom}
               @elem{indicate output type}
               @elem{output type is @zi[句]}
               @elem{@code{句 􏽀 􏼅 􏼄 􏼃 􏼂}})
               (list
               @elem{@bold{@litchar{句}} as compoment on the right}
               @elem{indicate output type}
               @elem{output type is @zi[句]}
               @elem{@code{􏼪 􏼲}})
               (list
               @elem{@bold{@litchar{句}} as component on the left}
               @elem{indicate input type}
               @elem{input type is @zi[句]}
               @elem{@code{􏺕 􏼭 􏼩 􏼳 􏼥 􏼝 􏼛 􏺔 􏺓 􏺒}})
         )]


@section{句 􏽀 􏽁, 句? 􏽀? 􏽁?, 􏼟?}
@eleph-note{@zi[􏷂] @zi[􏶿]}
@defzi[句]{@same-as-cnchar-but["句" "sentences" "string"].}
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


@section{􏺕, 􏼭, 句􏾝}
@eleph-note{@racket[巨]  @racket[弔]  @racket[􏾝] @racket[􏻿􏾝]}
@defzi[􏺕]{@zi[句] + @zi[巨]. @defzi/sub[巨]{@same-as-cnchar-but["巨" "huge" "measure, length"]}}
@defzi[􏼭]{@zi[句] + @zi[弔].}
@; @margin-note{另见：@racket[邭*]}
@examples[#:eval (the-eval)
(􏺕 "ThisIsstring")

(􏼭 "ThisIsstring" 3)

(句􏾝 "ThisIsstring" 3)
(句􏾝 "ThisIsstring" 3 8)
]


@section{􏼘, 􏼘/以􏾝, 􏼅𰅡}
@margin-note{
@; @bold{@litchar{拘}为古活字} @linebreak{}
@; @bold{@litchar{􏼿}为古活字}
@bold{@litchar{􏼘}为新造字} @linebreak{}
@; @bold{@litchar{邭}为古活字} @linebreak{}
@bold{@litchar{𰅡}为古活字} @linebreak{}
@itemlist[
@item{@litchar{扌}：“@litchar{!}”的意思；}
]
}
@; @margin-note{另见：@racket[􏼅], @racket[邭]}
@margin-note{另见：@racket[􏼅]}
@margin-note{参见：@racket[攸] @racket[􏻿􏾩] @racket[􏿰􏾩], @racket[􏻿􏾩/以􏾝]}
@examples[#:eval (the-eval)
(名 str (句 #\鹅 #\鹅 #\鹅 #\,  #\曲 #\项 #\向 #\天 #\歌 #\。))

(􏼘 str 1 #\白)
str

(􏼘/以􏾝 str 0 "ABCDEFG" 2 4)
str

(􏼅𰅡 str #\Z)
str
]

@section{􏼩 􏼪, 􏼳 􏼲}
@margin-note{
@bold{@litchar{􏼩}为新造字} @linebreak{}
@bold{@litchar{􏼪}为新造字} @linebreak{}
@bold{@litchar{􏼳}为新造字} @linebreak{}
@bold{@litchar{􏼲}为新造字}
@itemlist[
@item{@litchar{子}：@litchar{字}的简写（见：@secref["characters"]）；}
@item{上下结构的@litchar{又}+@litchar{㐅}：@racket[􏿴]；}
@item{上下结构的@litchar{又}+@litchar{子}：组成元素是“@racket[字]”的@racket[􏿴]；}
@item{@litchar{􏼩}：把@racket[句]转化为@racket[􏿴]；}
@item{@litchar{􏼳}：把@racket[句]转化为组成元素是字的@racket[􏿴]；}
@item{@litchar{􏼪}：把@racket[􏿴]转化为@racket[句]；}
@item{@litchar{􏼲}：把组成元素是@racket[字]的@racket[􏿴]转化为@racket[句]。}
]
}
@examples[#:eval (the-eval)
(􏼪 '("鹅" "鹅" "鹅" ", " "曲" "项" "向" "天" "歌"))
(􏼪 '("鹅" "鹅" "鹅" ", " "曲" "项" "向" "天" "歌") "")
(􏼪 '("鹅" "鹅" "鹅" ", " "曲" "项" "向" "天" "歌") "-")

(􏼩 "鹅鹅鹅, 曲项向天歌")
(􏼩 "鹅鹅鹅, 曲项向天歌" "")
(􏼩 "鹅鹅鹅, 曲项向天歌" ", ")
(􏼩 "鹅-鹅-鹅-曲-项-向-天-歌" "-")

(􏼲 '(#\鹅 #\鹅 #\鹅 #\,  #\曲 #\项 #\向 #\天 #\歌 #\。))
(􏼳 "鹅鹅鹅, 曲项向天歌。")
]

@section{􏼥, 􏼝, 􏼛}
@margin-note{
@bold{@litchar{􏼥}为新造字} @linebreak{}
@bold{@litchar{􏼝}为新造字} @linebreak{}
@bold{@litchar{􏼛}为新造字}
@itemlist[
@item{@litchar{戈}：本意是“兵器”, 引申为“修改 替换”之意；}
@item{@litchar{匕}：本意是“匕首”, 引申为“修剪 删除”之意；}
@item{@litchar{穴}：@litchar{空}的简写；}
@item{上下结构的@litchar{丷}+@litchar{匕}：修剪起始处和结尾处；}
@item{上下结构的@litchar{穴}+@litchar{一}：将相连的多个空格单一化成一个。}
]
}
@examples[#:eval (the-eval)
(􏼥 "鹅鹅鹅, 曲项向天歌。" "鹅鹅鹅" "小黄鸭")
(􏼥 "鹅鹅鹅, 曲项向天歌。" "鹅" "")
(􏼥 "\n\r鹅鹅鹅, \n\r曲项向天歌。\n\r\n\r" "\n\r" "")

(􏼝 "\n\r鹅鹅鹅, \n\r曲项向天歌。\n\r\n\r")
(􏼝 "鹅鹅鹅, 曲项向天歌。" "鹅鹅鹅")

(􏼛 "鹅  鹅    鹅   \n \n 曲项向天歌 \n\r")
]

@section{􏼹?, 􏼸?, 􏸶?}
@margin-note{
@bold{@litchar{􏼹}为新造字} @linebreak{}
@bold{@litchar{􏼸}为新造字} @linebreak{}
@; @bold{@litchar{􏼢}为新造字}
@itemlist[
@item{@litchar{本}：本意是“树根”, 在此引申为“起始 开头”之意；}
@item{@litchar{末}：本意是“树梢”, 在此引申为“结尾 末尾”之意；}
@item{@litchar{干}：本意是“枝干”, 在此引申为“中间 包含”之意；}
]
}
@examples[#:eval (the-eval)
(􏼹? "鹅鹅鹅, 曲项向天歌。白毛浮绿水, 红掌拨清波。" "鹅鹅鹅")
(􏼸? "鹅鹅鹅, 曲项向天歌。白毛浮绿水, 红掌拨清波。" "拨清波。")
(􏸶? "鹅鹅鹅, 曲项向天歌。白毛浮绿水, 红掌拨清波。" "鹅鹅鹅")
(􏸶? "鹅鹅鹅, 曲项向天歌。白毛浮绿水, 红掌拨清波。" "拨清波。")
(􏸶? "鹅鹅鹅, 曲项向天歌。白毛浮绿水, 红掌拨清波。" "白毛")
]

@section{􏺔, 􏺓, 􏺒}
@margin-note{
@bold{@litchar{􏺔}为新造字} @linebreak{}
@bold{@litchar{􏺓}为新造字} @linebreak{}
@bold{@litchar{􏺒}为新造字}
@itemlist[
@item{@litchar{与}：@litchar{写}的简写；}
]
}
@examples[#:eval (the-eval)
(􏺔 "string upper case")
(􏺓 "string lower case")
(􏺒 "string title case")
]

@section[#:tag "string-base"]{基础例程}
@defmapping[racket/base/string]
@defmodule[ming/racket/base]

@section[#:tag "string-additional"]{额外例程}
@defmodule[ming/racket/string]

@defmapping[racket/string]
