#lang scribble/manual

@(require (for-label racket ming ming/list)
           scribble/eval
           ming/scribble
           )
@(define the-eval
         (make-eval-factory '(ming/racket/base)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*

@title[#:tag "characters"]{􏶃}
Originated from @secref["characters" #:doc '(lib "scribblings/reference/reference.scrbl")].

@section{􏶃, 􏶃?}
@defzi[􏶃]{@simplified-from-cnchar["字" "character"].}


@section[#:tag "character-base"]{ming/racket/base}
@defmapping[racket/base/characters]
@defmodule[ming/racket/base]
