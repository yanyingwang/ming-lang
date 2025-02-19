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


@defideogr[(亻) "general subset" "人" "people"]{
As component of ideographs, which implies The type of output data is same as the input, and content is part of the input. @linebreak{}
In particular, @zi[化] is exceptionally different, which has a more diverse usages scenarios, @zi[化I], @zi[化E].
@ziexamples[伄 攸 𰂋 偏 􏾜 􏾛 偅 𠆯 􏹈 􏻿𠆯 􏻿􏷑]
}

@defideogr[(扌 !) "warning, is changing original data" "手" "hands, handle"]{
Has the same meaning as @litchar{!} like how it is prevalently used in lots of modern programming languages. @linebreak{}
When you see this component in ideographs that are used to name procedures, you know it immediately that those procedures will directly modify their input data instead of returning a new one as output. @linebreak{}
@ziexamples[􏻿􏾩 􏻿𢪛 􏻿􏽒 􏻿􏷉 􏼅𰅡]
}


@defideogr[山 "immutable" "山" "mountain"]{
@ziexamples[山? 􏻼 􏾐? 􏽁]
}

@defideogr[(水 氵 𭕄) "mutable" "水" "water"]{
@zi[氵] and @zi[𭕄 ] both are the simplified way to write @zi[水] when used as the component of characters.
@ziexamples[水? 􏻽 􏾑? 􏽀]
}

@defideogr[毌  "append" "贯" "append"]{
Appends the elements, goes through the elements and connect them as one together.
@ziexamples[􏿝 􏼉 􏼃]
}

@defideogr[巨  "length" "巨" "measure"]{
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

@nested[#:style 'inset]{
@defideogr[化I "type conversion"]{
@elem{
Convert data from type 1 (as input) to type 2 (as output).
@ziexamples[􏻿化􏿴 􏿴化􏻿]
}
}

@defideogr[化E "minorly convert data type"]{
@elem{
Converting data With reserving the general data type, e.g. between @zi[山] and @zi[水].

In this case, input and output are the same type.

Which means the content of data may be changed, or it is mutable and immutable before but change to immutable and mutable.

@ziexamples[􏻼化 􏽀化 􏽁化 􏼅𰅡]
}
}
}

@defideogr[𰅡 (扌 匕) "modify data type"]{
@elem{
Converts data type with modifying the original data.
@ziexamples{􏼅𰅡}
}
}

@defideogr[􏵸 (分 匕) "split and convert data type"]{
@elem{
Splits data and return it in a different data type.
@ziexamples[句􏵸􏿴]
}
}

@defideogr[􏵷 (毌 匕) "append and convert data type"]{
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
