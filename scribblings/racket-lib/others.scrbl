#lang scribble/manual

@(require (for-label racket ming)
           scribble/eval ming/scribble)

@(define the-eval
         (make-eval-factory '(ming/racket/base ming/racket/list ming/string)))


@(require (file "../../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "racket/base/others"]{未分类}

@; @section+elemref{同?、􏾱?、􏾰?、􏾯?}
@; @margin-note{
@; @bold{@litchar{􏾱}、@litchar{􏾰}、@litchar{􏾯}为新造字}
@; @linebreak{}
@; 增加的偏旁分别表示：
@; @itemlist[
@; @item{@litchar{勿}偏旁是“@litchar{易}”偏旁的简写；}
@; @item{@litchar{易}偏旁意思是“可变的，易变的”的意思，即是@racket[坚?]的反意；}
@; @item{@litchar{𠂉}偏旁取自“@litchar{复}”的起首偏旁，是“复合”的意思，即表示“所有复合结构的数据”；}
@; @item{@litchar{米}偏旁取自“@litchar{数}字的起首偏旁，有@racket[数?]的意思；}
@; ]
@; }

@section+elemref{遍?}
@examples[#:eval (the-eval)
(遍 ([i (􏿴/数段* 1 5)])
      (行陈 i))
]

@defmapping[racket/base/others]
