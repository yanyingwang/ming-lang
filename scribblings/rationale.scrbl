#lang scribble/manual

@(require (for-label racket ming ming/list ming/vector)
           scribble/example
           scribble-rainbow-delimiters)
@(define the-eval
         (make-eval-factory '(racket/base racket/list ming/list ming/racket/base ming/racket/list)))


@(require (file "../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "rationle"]{Rationale}
ref to: @url{http://www.yanying.wang/SOICOL}

@section{Lisp and parenthsis}
Lisp, as an ancient programming language, when I was learning it with inherent ideas from modern programming languages such as Ruby, I noticed there are a few distinctions. Among them, The most prominent one is the form.

LISP is highly flat, all are parenthesis. On the contrary, most modern PLs adhere to use different forms for different operations:
@tabular[#:style 'boxed
         #:column-properties '(left left)
         #:row-properties '(bottom-border ())
(list
(list @bold{Operation} @bold{Ruby code} @bold{Racket code})
(list "number addition" @code{1+2+3}     @code{(+ 1 2 3)} )
(list "create array"    @code{[1, 2, 3]}           @code{(vector 1 2 3)})
(list "create hash"     @code{{a: 1, b: 2, c: 3}}  @code{(hash 'a 1 'b 2)}  )
(list "create array of a range of numbers"   @code{Array(1..5)}     @code{(build-list 5 values)})
(list "create array of duplication elements" @code{Array.new(3, 1)} @code{(make-list 3 1)})
)]

By the examples shown above, we can see in Ruby, different operations are wrote in distinctive forms, but in Racket they are in same form: elements in one parenthesis. This each other resemled form of LISP impedes people to distinct them on a glimpse, thus the meaning of operations are more blamed on the function names(first word of elements in parenthesis).

In conclusion, the function names of LISP take more responsibilities to annotate operations than modern PLs. The more informations that function names shown to us, the better we can distinguish them and understand the purpose and usage of them.


@section[#:tag "retrofit-chinese-to-lisp"]{Chineseoid characters}
Compare to English,the writing is based on the pronounciation of speaking, Chinese contrarily emphasize its writing more than speaking, which has actually developed a way to write connected objects and concepts, we call it @hyperlink["https://en.wikipedia.org/wiki/Chinese_character_classification" "LiuShu(六书)"].

With the fact that chinese characters are just the implement of using LiuShu for the communication of human, what I am doing here is using it to invent and design lots of chinese resembled characters(looks like chinese characters but can not be recognized by most Chinese people) for the concepts of Lisp and even the whole programming language world to make human interact better with it.

@tabular[#:style 'boxed
         #:column-properties '(left left)
         #:row-properties '(bottom-border ())
(list (list @bold{Ming code}  @bold{Racket code})
(list @code{(双 'a 'b)} @code{(cons 'a 'b)})
(list @code{(􏿴 'a 'b 'c 'd)} @code{(list 'a 'b 'c 'd)})
(list @code{(􏿝 '(1) '(2) '(3 4) '(5 6))} @code{(append '(1) '(2) '(3 4) '(5 6))})
(list @code{(􏿜 '(1) '(2) '(3 4) '((5 6)))} @code{(append* '(1) '(2) '(3 4) '((5 6)))})
(list @code{(􏼓 6 'foo)} @code{(make-list 6 'foo)})
(list @code{(􏼎 10 並)} @code{(build-list 10 values)})
(list @code{(弓 '(a b c d e c f) 'c)} @code{(index-of '(a b c d e c f) 'c)})
(list @code{(􏼏 10)} @code{(range 10)})
(list @code{(􏻿 'a 'b 'c 'd)} @code{(vector 'a 'b 'c 'd)})
(list @code{(􏿰 'a 'b 'c 'd)} @code{(hash 'a 'b 'c 'd)})
)]

As chart shown above, the keywords of Ming are much short in length, and in forms the complex characters are usually consituted by other simpler characters, and those simpler characters are usually used for related function names as well.

Further more, the connotations behind the characters work the same way, they are related to each other and complex concepts are broke to simple concepts.

And one more thing, the chineseoid characters implemented here also have the ability to imply to human about the arguments and results of functions, check @secref["naming-rules"] for more.
