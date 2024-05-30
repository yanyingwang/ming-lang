#lang at-exp racket/base


(provide defmapping defhzify section+elemref section+autotag
         eleph-note elucidate
         means whmeans
         modernly-simplifies anciently-simplifies
         simplf-from
         modernly-means mingly-resembles
         ori-esp-means
         ;; defradical defcomponent defcharacter defhybrid
         defradical defcomponent defsuffix defprefix definsert defhas
         defzi defzis defzi/puauni zi defzi/sub
         defcompost
         short-for-code short-for-racket
         )
(require scribble/manual racket/string scribble/core
         scribble/html-properties
         (for-syntax racket/base racket/string racket/list
                     "private/zitable.rkt"))


(define-syntax-rule (defhzify cnid rsn enid)
  (defthing #:kind "composition" cnid (unsyntax (racketidfont rsn)) #:value enid)
  )

(define-syntax (defradical stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem (elemtag str-zi (bold (litchar str-zi))) (hspace 1) "as radical"))
     ])
  )

(define-syntax (defcomponent stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem (elemtag str-zi (bold (litchar str-zi))) (hspace 1) "as component" ))
     ])
  )
(define-syntax (defsuffix stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (if (number? (syntax-e #'zi))
                               (number->string (syntax-e #'zi))
                               (symbol->string (syntax-e #'zi)))])
       #'(elem "suffixed with" (hspace 1) (elemtag str-zi (bold (litchar str-zi)))))
     ])
  )
(define-syntax (defprefix stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (if (number? (syntax-e #'zi))
                               (number->string (syntax-e #'zi))
                               (symbol->string (syntax-e #'zi)))])
       #'(elem "prefixed with" (hspace 1) (elemtag str-zi (bold (litchar str-zi)))))
     ])
  )
(define-syntax (definsert stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem "inserted with" (hspace 1) (elemtag str-zi (bold (litchar str-zi)))))
     ])
  )
(define-syntax (defhas stx)
  (syntax-case stx ()
    [(_ zi)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem "has" (hspace 1) (elemtag str-zi (bold (litchar str-zi)))))
     ])
  )


(define-syntax (section+elemref stx)
  (syntax-case stx ()
    [(_ pars ...)
     (datum->syntax stx `(begin
                           ,(cons 'section #'(pars ...))
                           ,@(for/list ([e (string-split (syntax-e (last (syntax-e #'(pars ...)))) #rx"(、|，|：)")]) (list 'elemtag (string-trim e))) ; fix last, when source code includes newlines
                           (linebreak)))]
    )
  )


(define-syntax (defmapping stx)
  (define (gen-defhzify ecr)
    (define enid (car ecr))
    (define cnid (cadr ecr))
    (define raw-exploded
      (cond [(and (> (length ecr) 2)
                  (list? (caddr ecr)))
             (map (lambda (e) `(zi ,(cond
                                 [(symbol? e) e]
                                 [(string? e) (string->symbol e)]
                                 [(list? e) 'needtofix]
                                 [else 'needtofix])))
                  (caddr ecr))]
            [(and (= (length ecr) 2)
                  (string-contains? (symbol->string cnid) "/"))
             (add-between (map (lambda (e) `(racket ,(string->symbol e)))
                               (string-split (symbol->string cnid) "/"))
                          `(zi /))]
            [(= (length ecr) 2)
             (map (lambda (e) `(zi ,(string->symbol e)))
                  (filter non-empty-string? (string-split (symbol->string cnid) "")))]
            [else '()]))
    (define exploded `(elem ,@(add-between raw-exploded " + ")))
    (datum->syntax stx `(defhzify ,cnid ,exploded ,enid)))
  (syntax-case stx ()
    [(_ path)
     (with-syntax ([(defth ...)
                    (map gen-defhzify
                         (get-zis (syntax-e #'path)))])
       #'(deftogether
             (defth ...)))]
    )
  )


(define (defzi0/puauni tag) ;; unicode from pivate use areas
  (elemtag tag (elem (bold (litchar tag)) ":" (hspace 1) "PUA unicode, especially designs for ming-lang.")))

(define (defzi0 tag . content)
  (elemtag tag (elem (bold (litchar tag)) ":" (hspace 1) content)))

(define-syntax (defzi/puauni stx)
  (syntax-case stx ()
    [(_ zi content ...)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elemtag str-zi (elem (bold (racket (code:hilite zi))) ":" (hspace 1) "PUA unicode, especially designs for ming-lang.")))
     ])
  )

(define-syntax (defzi/sub stx)
  (syntax-case stx ()
    [(_ zi content ...)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem #:style (style #f (list (attributes '([style . "margin-bottom: 0; "]))))
               (elemtag str-zi (elem (bold (racket (code:hilite zi))) ":" (hspace 1) content ...))))
     ])
  )

(define-for-syntax (r-background-label label)
  `(elem #:style (style #f (list (alt-tag "div") (attributes '([class . "RBackgroundLabelInner"]))))
         ,label)
  )
(define-syntax (defzis stx)
  (define (zis-of-str stx-zis)
    (string-split (symbol->string (syntax-e stx-zis)) "/"))
  (define (gen-elemtag z)
    `(elemtag ,z (bold (racket (code:hilite ,(string->symbol z))))))
  (define (gen-elemtags zis)
    (datum->syntax  stx (cons 'elem (add-between (map gen-elemtag zis) "/"))))
  (syntax-case stx ()
    [(_ zis content ...)
     #`(elem #:style (style #f (list (alt-tag "p") (attributes '([class . "boxed"]))))
             #,(gen-elemtags (zis-of-str #'zis)) ":" (hspace 1) content ... #,(r-background-label "zi"))
     ])
  )

(define-syntax (defzi stx)
  (syntax-case stx ()
    [(_ zi content ...)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #`(elem  #:style (style #f (list (alt-tag "div") (attributes '([class . "boxed"] [style . "margin-top: 1em; margin-bottom: 1em; "]))))
                (elemtag str-zi (elem (bold (racket (code:hilite zi))) ":" (hspace 1) content ...
                                      (elem #:style (style #f (list (alt-tag "div") (attributes '([class . "RBackgroundLabel SIEHidden"]))))
                                            #,(r-background-label "zi"))
                                      ))))
     ])
  )

(define-syntax (defcompost stx) ;; define compostion
  (define (gen-parts ps)
    (datum->syntax stx (cons 'elem (add-between (map (lambda (p) `(zi ,p)) ps) " + "))))
  (syntax-case stx ()
    [(_ zi (parts ...) content ...)
     #`(defzi zi #,(gen-parts (syntax->datum #'(parts ...))) "." (hspace 1) content ...)
     ])
  )

(define-syntax (zi stx) ;; zi shorts for hanzi, means chinese char.
  (syntax-case stx ()
    [(_ z)
     (with-syntax ([str-z (symbol->string (syntax-e #'z))])
       #'(elem #:style (style #f (list (attributes '([class . "highlighted"]))))
               (elemref str-z (racketplainfont str-z))))
     ])
  )
;; (define (zi c) ;; zi shorts for hanzi, means chinese char.
;;   (elem #:style (style #f (list (attributes '([class . "highlighted"]))))
;;         (elemref c (racketplainfont c)))
;;   )

(define (section+autotag . content)
  (define tag (string-join content ""))
  (section #:tag tag content))

(define (means . content)
  (elem "means" (hspace 1) @(italic content)))
(define (whmeans . content)
  (elem "which means" (hspace 1) @(italic content)))

(define (eleph-note . content) ;; 像注, elephant in chinese is wrote as 象, and 像 means like
  (margin-note (elem "🐘" (hspace 1) content))) ;; 💡

(define (elucidate . content) ;; 释义
  (elem (italic content)))

(define (modernly-means elucidation . content)
  @elem{means @elucidate{@elucidation} in modern chinese. @content}
  )

(define (mingly-resembles zi elucidation . content)
  @elem{resembles @litchar{@zi}, especially means @elucidate{@elucidation} in ming-lang. @content}
  )

(define (modernly-simplifies zi elucidation . content)
  @elem{simplifies for @(litchar zi), which means @(elucidate elucidation) in modern chinese. @content}
  )

(define (anciently-simplifies zi elucidation ming-elu . content)
  @elem{simplifies for @litchar{@zi} in ancient chinese, means @elucidate{@elucidation}, especially means @elucidate{@ming-elu} in ming-lang. @content}
  )

(define (ori-esp-means ori-elu esp-elu . content)
  @elem{originally means @elucidate{@ori-elu}, especially means @elucidate{@esp-elu}. @content}
  )

(define (simplf-from zi)
  @elem{simplified from @litchar{@zi}}
  )


(define-syntax (short-for-code stx)
  (syntax-case stx ()
    [(_ c ...)
     #'(elem "Shorts for " (code c ...))
     ])
  )
(define-syntax (short-for-racket stx)
  (syntax-case stx ()
    [(_ c ...)
     #'(elem "Shorts for " (racket c ...))
     ])
)
  ;; @elem{Shorts for @code{@rawcode}.})