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

@defideogr[山 "immutable" "山" "mountain"]{
@ziexamples[山? 􏻼 􏾐? 􏽁]
}

@defideogr[(水 氵 𭕄) "mutable" "水" "water"]{
@zi[氵] and @zi[𭕄 ] both are the simplified way to write @zi[水] when used as the component of characters.
@ziexamples[水? 􏻽 􏾑? 􏽀]
}


@defideogr[巨  "length" "巨" "measure"]{
@ziexamples[巨 􏺕]
}

@defideogr[匕  "convert data type" "匕" "person upside down"]{
@examples[@zi[化] @zi[𰅡]]
}

@defideogr[化 "convert data type" "化" "normal person and person upside down"]{
Convert data type by the way of returning a new one in another type.

@defsubideogr[化I "convert data type"]{
@ziexamples[􏻿化􏿴 􏿴化􏻿]
}

@defsubideogr[化E "slightly convert data type"]{
With reserving the general data type, e.g. between @zi[山] and @zi[水].
@ziexamples[􏻼化 􏽀化 􏽁化]
}
}

@defideogr[𰅡 (扌 匕) "directly convert data type"]{
Convert data type by the way of modifying original data.
@ziexamples[􏼅𰅡]
}


@; @section[#:tag "as-characters"]{As characters of another word}
