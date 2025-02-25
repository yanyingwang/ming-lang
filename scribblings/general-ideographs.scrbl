#lang scribble/manual

@(require (for-label racket ming ming/list ming/vector ming/hash ming/string)
           scribble/example
           ming/scribble
           scribble-rainbow-delimiters)
@(define the-eval
         (make-eval-factory '(racket/base racket/list ming/racket/base ming/racket/list)))

@(require (file "../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*

@title[#:tag "general-ideographs"]{General Ideographs}


@; @section[#:tag "as-parts"]{As parts of another character}
@tech[#:doc "naming-rules"]


@defideogr[(亻) "general subset" "亻" "person, people, human"]{
As component of ideographs, it implies The type of output data is same as the input. And the elements of output data are part of the input.
In particular, @zi[化] is exceptionally different, which has a more diverse usages scenarios, @zi[化Ix], @zi[化Sx].
Note that, if the procedure name has another ideograph prefix it as a word, the input and output type is determinated by the prefix ideographs, e.g., @rackets[􏻿𢪛 􏿰攸 􏻿弔 􏿰弔 􏻿巨 􏿰巨].
@ziexamples[伄 攸 𰂋 偏 􏾜 􏾛 偅 𠆯 􏹈]
}

@defideogr[(阝) "serial subset" "阝" "hill"]{
As component of ideographs, it implies The type of output data is same as the input. And the elements of ouput data is a serial of successive elements of the input.
@ziexamples[􏾝 􏾺 𨚞 􏹋]
}


@defideogr[(刂) "broken subset" "刂" "knife"]{
Returns a new list as output with removing some elements from the input list.
@ziexamples[􏷵 􏷴 􏺊 􏾘 􏹊 􏹇 𠝤]
}

@defideogr[(L R B T) #f #f #f]{
Are Shot for: Left, Right, Bottom, Top. Those characters imply the prefix's position as it composes an ideograph.
}

@defideogr[(Px Sx Ix) #f #f #f]{
Are Shot for: Prefix, Suffix, Infix. Which imply the position of its prefix as this prefix composes a word. @linebreak{}
Examples: @zi[化Ix] @zi[化Sx]
}

@defideogr[(LB BR BL) ((L R B T) (L R B T)) "extends from one position to another" #f #f]{
Means the prefix of it extends from such as Left to Bottom in an ideograph when it composes this ideograph. @linebreak{}
Examples: @zi[又LB] @zi[􏿴BR] @zi[􏿫BR]
}

@defideogr[(扌 !) "warning, is changing original data" "手" "hands, handle"]{
Has the same meaning as @litchar{!} like how it is prevalently used in lots of modern programming languages.
When you see this component in ideographs that are used to name procedures, you know it immediately that those procedures will directly modify their input data instead of returning a new one as output. @linebreak{}
@ziexamples[􏻿􏾩 􏻿𢪛 􏻿􏽒 􏻿􏷉 􏼅𰅡]
}


@defideogr[? "output is boolean" #f #f]{
Implies the output is boolean.
@ziexamples[双? 􏿴? 􏿳?]
}

@defideogr[* "strengthen" #f #f]{
Almost has the same usage as the one named without @zi[*], except this strengthen the processing of inputted data. Thus the data of output may become longer, and the type may be changed accordingly.
@ziexamples[弓*]
}

@defideogr[~ "strengthen" #f #f]{
Almost has the same usage as the one named without @zi[~], except this soften the processing of inputted data. Thus the data of output may become shorten.
@ziexamples[􏹊~]
}

@defideogr[^ "list as input" #f #f]{
Almost has the same usage as the one named without @zi[^], except that input data is a list.
@ziexamples[􏹊^ 伄^ 􏾘^]
}

@defideogr[/ "extends prefix" #f #f]{
The suffix of it is considered as an extending explanation of the prefix.
@ziexamples[􏷍/组合]
}

@defideogr[空 "empty" "空" "empty"]
@defideogr[穴 "empty" "穴" "hole"]{
Simplifies from @zi[空], which means @italic{empty}.
@ziexamples[穴 􏻸 􏻷]
}

@defideogr[山 "immutable" "山" "mountain"]{
@ziexamples[山? 􏻼 􏾐? 􏽁]
}

@defideogr[(水 氵 𭕄) "mutable" "水" "water"]{
@zi[氵] and @zi[𭕄 ] both are the simplified way to write @zi[水] when used as the component of characters.
@ziexamples[水? 􏻽 􏾑? 􏽀]
}

@defideogr[毌 "append" "毌" "to pass through, all over"]{
Appends the elements, goes through the elements and connect them as one together. (@zi[毌] is the initial form of modern chinese char @zi-tool{贯}.)
@ziexamples[􏿝 􏼉 􏼃]
}


@defideogr[攵 "modify value" "攵" "raping over something with hands"]{
Appends the elements, goes through the elements and connect them as one together. (Do not confuse with @zi[夂].)
@ziexamples[𰁦 攸 􏾩 𢪛]
}

@defideogr[(土 􏷪) "produce data" "土" "ground, earth"]{
Processes input data and output a new one in a very different type. Implies the type of output data is not same as input.
@ziexamples[􏷎 𡌶]
}

@defideogr[巨  "length" "巨" "straightedge, ruler, measure"]{
@ziexamples[巨 􏺕]
}

@defideogr[本 "start, prefix" "本" "root"]{
@ziexamples[􏼹?]
}

@defideogr[末 "end, suffix" "末" "treetop"]{
@ziexamples[山? 􏻼 􏾐? 􏽁]
}

@defideogr[匕  "convert data type" "匕" "upturned person"]{
Examples: @zi[化] @zi[𰅡] @zi[􏵷] @zi[􏵸]
}

@defideogr[化(亻 匕) "convert data type" "化" "a normal person with a upturned person"]{
convert data type by the way of returning a new one in another type.
}

@defideogr[化Ix (化 Ix) "type conversion" #f #f]{
Convert data from type 1 (as input) to type 2 (as output).
@ziexamples[􏻿化􏿴 􏿴化􏻿]
}

@defideogr[化Sx (化 Sx) "minorly convert data type" #f #f]{
Converting data With reserving the general data type, e.g., between @zi[山] and @zi[水]. @linebreak{}
In this case, input and output are the same type. @linebreak{}
Which means the content of data may be changed, or it is mutable and immutable before but change to immutable and mutable.
@ziexamples[􏻼化 􏽀化 􏽁化 􏼅𰅡]
}

@defideogr[(𰅡 𰅡Sx) (扌 匕 Sx) "modify data type" #f #f]{
Converts data type with modifying the original data. (@zi[𰅡Sx] resembles @zi[化Sx].)
@ziexamples[􏼅𰅡]
}

@defideogr[(􏵸 􏵸Ix) (分 匕 Ix) "split and convert data type" #f #f]{
@elem{
Splits data and return it in a different data type.
@ziexamples[句􏵸􏿴]
}
}

@defideogr[(􏵷 􏵷Ix) (毌 匕 Ix) "append and convert data type" #f #f]{
@elem{
Appends data and return it in a different data type.
@ziexamples[􏿴􏵷句]
}
}

@defideogr[㚘 "substitue" "替" "substitute, substitution"]{
To easily write it, it may be also wrote in vertical when as component of another ideograph.
@ziexamples[􏶐]
}

@defideogr[𡯂 "naked, not sharp" "秃" "bald"]{
A state of an object with removing something from its begining and ending.
@ziexamples[􏶊]
}


@; @section[#:tag "as-characters"]{As characters of another word}
