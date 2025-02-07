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


@section[#:tag "as-parts"]{As parts of another character}
@tech[#:doc "naming-rules"]

@defideogr[山 "immutable" "山" "mountain"]{
@ziexamples[山? 􏻼 􏾐? 􏽁]
}

@defideogr[(水 氵 𭕄) "mutable" "水" "water"]{
@ziexamples[水? 􏻽 􏾑? 􏽀]
}

@section[#:tag "as-characters"]{As characters of another word}
