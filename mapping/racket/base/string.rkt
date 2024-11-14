#lang at-exp s-exp "../../../private/mapping-lang.rkt"


>>> string? 􏷁? ; keyword 􏶿 ; symbol 勺
>>> string 􏷁 "创建一个内容可变的字符串数据结构" ;; TODO: create all the procedures started with 易 to 坚
>>> make-string 􏼅 @elem{构造内容是若干个相同元素的@racket[􏷁]} ;复􏷁
>>> string->immutable-string 􏽁化 @elem{把@racket[􏽀]转变为@racket[􏽁]}
>>> string-length 􏺕 "􏷁的长度"  ;􏼬 􏷁巨
>>> string-ref 􏼭 "返回􏷁的第N个元素（从0算起）" ; 􏷁弔
>>> string-set! 􏼘 @elem{直接修改原始数据第N处字（从0算起）为某字} ;􏷁􏾩 敂! 拘
>>> substring 􏷁􏾝 @elem{返回􏷁第N到M处内容组成的@racket[􏽀]} ;邭 􏷁􏾝
>>> string-copy 􏽀化 @elem{把@elem{􏽁}转化为@elem{􏽀}}
>>> string-copy! 􏼘/以􏾝 @elem{从第N处字（从0算起）开始做覆盖（以另一个􏷁的@racket[􏷁􏾝]结果为内容）} ;􏷁􏾩/以􏾝
>>> string-fill! 􏼅𰅡 "把􏷁的内容全部变成某一个重复的字" ; 􏷁㙏! 􏷁复! 𰅡 𢪎 􏼗化! 􏼗𰅡 􏼗𢪎  􏼗 􏼖
>>> string-append 􏼃 @elem{把很多􏷁连成一个@racket[􏽀]} ; 贯􏷁 􏼱
>>> string-append-immutable 􏼁 @elem{把很多􏷁连成一个@racket[􏽁]} ; 􏼯

>>> string->list 􏼳 @elem{􏷁化字􏿴：把@racket[􏷁]转化为@racket[􏿴]（由@racket[字]组成）} ;􏷁化􏿴
>>> list->string 􏼲 @elem{字􏿴化􏷁：把@racket[􏿴]（由@racket[字]组成）转化为@racket[􏷁]} ; 􏿴化􏷁
>>> build-string 􏼄 @elem{构造内容是一系列序数转化成@racket{字}所组成的@racket[􏷁]} ; 序􏷁 􏼔
>>> string=? 􏷁=?
>>> string<? 􏷁<?
>>> string<=? 􏷁<=?
>>> string>? 􏷁>?
>>> string>=? 􏷁>=?

>>> string-ci=? 􏷁ci=?
>>> string-ci<? 􏷁ci<?
>>> string-ci<=? 􏷁ci<=?
>>> string-ci>? 􏷁ci>?
>>> string-ci>=? 􏷁ci>=?

>>> string-upcase 􏺔 @elem{将􏷁大写化} ;􏼨
>>> string-downcase 􏺓 @elem{将􏷁小写化} ;􏼧
>>> string-titlecase 􏺒 @elem{将􏷁中单词首字母大写化其余小写化} ;􏺒
>>> string-foldcase 􏺓* @elem{将􏷁中单词做CaseFolding处理} ;
