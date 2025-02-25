#lang scribble/manual

@(require (for-label racket ming)
           scribble/eval
           ming/scribble
           )

@(require (file "../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts

@title[#:style '(toc) #:tag "ming libs"]{Ming Libraries}

@(table-of-contents)

@; @include-section["ming-lib/core.scrbl"]
@include-section["ming-lib/kernel.scrbl"]
@include-section["ming-lib/list.scrbl"]
@include-section["ming-lib/vector.scrbl"]
@include-section["ming-lib/hash.scrbl"]
@include-section["ming-lib/string.scrbl"]
@include-section["ming-lib/number.scrbl"]
