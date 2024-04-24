#lang scribble/manual


@(require (for-label racket ming scribble/base)
           scribble/example
           scribble-rainbow-delimiters)
@(define the-eval
         (make-eval-factory '(racket/base racket/list ming/racket/base ming/racket/list)))

@(require (file "../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*

@title[#:tag "startup"]{Startup}

@section[#:tag "fonts-and-input-method"]{Fonts and Input method}
To make Ming-Language work, we have two major things need to do:
@itemlist[#:style 'ordered
@item{to show chineseoid characters, install @hyperlink["https://github.com/yanyingwang/cangjie" "cangjie font"] to your OS；}
@item{to input chineseoid characters, install @hyperlink["https://rime.im/" "rime input method"] and use @hyperlink["https://github.com/yanyingwang/asdfzma/" "asdfzma scheme"];(check @hyperlink["https://github.com/yanyingwang/rime_custom" "rime_custom"] for an out-of-the-box config)}
]

@section[#:tag "highlight-on-emacs"]{Code highlight for Emacs editor}
@code{git clone https://github.com/yanyingwang/racket-mode-for-ming} and then add below code：
@codeblock|{
(use-package racket-mode
  :load-path "your-cloned-code-dir/racket-mode-for-ming"
)
}|

@section[#:tag "ggfsm"]{GGFSM}
As a demonstation, GGFSM is a website draw gua graph for stocks, most code of this project are wrote in the Ming-Lang flavor:
@url{https://github.com/yanyingwang/ggfsm}