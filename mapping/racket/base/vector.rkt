#lang at-exp s-exp "../../../private/mapping-lang.rkt"


>>> vector 􏻿
>>> vector? 􏻿?
>>> make-vector 􏻺
;; >>> make-vector 复􏻿 @elem{构造复@racket[􏻿]（数据内各个元素是相同的，类比（昆虫）“复眼”一词取名）}
>>> vector-immutable 􏻼 ;; 贞􏻿 坚􏻿 定􏻿 固
>>> vector-length 􏻿巨 (􏻿Px 巨) ;􏻿度
>>> vector-ref 􏻿弔 (􏻿Px 弔)
>>> vector-set! 􏻿􏾩 (􏻿Px 􏾩)
;; >>> vector*-length vector*-length
;; >>> vector*-ref vector*-ref
;; >>> vector*-set! vector*-set!
;; >>> vector-cas! vector-cas!
>>> vector->list 􏻿化􏿴 (􏻿 化Ix 􏿴) ; 􏻿->􏿴
>>> list->vector 􏿴化􏻿 (􏿴 化Ix 􏻿)
>>> vector->immutable-vector 􏻼化 (􏻼 化Sx) ;􏻿定化 􏻿坚化 坚化/􏻿  􏻿->定􏻿
>>> vector-fill! 􏻺𰅡  (􏻺 𰅡Sx);􏻿㙏! 􏼊化!
>>> vector-copy! 􏻿𢪛/以􏾝 (􏻿Px 𢪛 / 以 􏾝)  ; 􏾝
>>> vector->values 􏻿􏾝化並 (􏻿Px 􏾝 化 並) ; 􏸼
>>> build-vector 􏻻 ; 序􏻿 @elem{构造序@racket[􏻿]（数据内部的各个个元素是按照一定次序排列的）}
