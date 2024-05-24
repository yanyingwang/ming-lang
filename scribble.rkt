#lang at-exp racket/base


(provide defmapping defhzify section+elemref section+autotag
         eleph-note elucidate
         defzi defzis defzi/puauni zi defzi/sub
         means
         modernly-simplifies anciently-simplifies
         simplified-from
         modernly-means mingly-resembles
         ori-esp-means
         ;; defradical defcomponent defcharacter defhybrid
         defradical defcomponent defsuffix definsert defhas
         )
(require scribble/manual racket/string scribble/core
         scribble/html-properties
         (for-syntax racket/base racket/string racket/list
                     "private/zitable.rkt"))


(define-syntax-rule (defhzify cnid rsn enid)
  (defthing #:kind "汉字化" cnid (unsyntax (racketidfont rsn)) #:value enid)
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
                                 [(symbol? e) (symbol->string e)]
                                 [(string? e) e]
                                 [(list? e) "need to fix"]
                                 [else "empty"])))
                  (caddr ecr))]
            [(and (= (length ecr) 2)
                  (string-contains? (symbol->string cnid) "/"))
             (add-between (map (lambda (e) `(racket ,(string->symbol e)))
                               (string-split (symbol->string cnid) "/"))
                          `(zi "/"))]
            [(= (length ecr) 2)
             (map (lambda (e) `(zi ,e))
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

(define-syntax (defzis stx)
  (define (zis-of-str stx-zis)
    (string-split (symbol->string (syntax-e stx-zis)) "/"))
  (define (elemtag z)
    `(elemtag ,z (bold (racket (code:hilite ,(string->symbol z))))))
  (define (elemtags zis)
    (datum->syntax  stx (cons 'elem (add-between (map elemtag zis) "/"))))
  (syntax-case stx ()
    [(_ zis content ...)
     #`(elem #:style (style #f (list (alt-tag "p") (attributes '([class . "boxed"]))))
             #,(elemtags (zis-of-str #'zis)) ":" (hspace 1) content ...)
     ])
  )
(define-syntax (defzi stx)
  (syntax-case stx ()
    [(_ zi content ...)
     (with-syntax ([str-zi (symbol->string (syntax-e #'zi))])
       #'(elem  #:style (style #f (list (alt-tag "p") (attributes '([class . "boxed"]))))
                (elemtag str-zi (elem (bold (racket (code:hilite zi))) ":" (hspace 1) content ...))))
     ])
  )



(define (zi c) ;; zi shorts for hanzi, means chinese char.
  (elem #:style (style #f (list (attributes '([class . "highlighted"]))))
        (elemref c (racketplainfont c)))
  )

(define (section+autotag . content)
  (define tag (string-join content ""))
  (section #:tag tag content))

(define (means . content)
  (elem "means" (hspace 1) @(italic content)))

(define (eleph-note . content) ;; 像注, elephant in chinese is wrote as 象, and 像 means like, resemble
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
  @elem{originally means @elucidate{@ori-elu}, especially means @elucidate{@esp-elu} in ming-lang. @content}
  )

(define (simplified-from zi)
  @elem{simplified from @litchar{@zi}}
  )