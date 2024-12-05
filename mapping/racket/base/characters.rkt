#lang at-exp s-exp "../../../private/mapping-lang.rkt"

>>> char? 􏶃?
>>> char->integer 􏶃化米
>>> integer->char 米化􏶃

>>> char-utf-8-length 􏶂/utf-8
>>> char=? 􏶃=? (􏶃 =?)
>>> char<? 􏶃<? (􏶃 <?)
>>> char<=? 􏶃<=? (􏶃 <=?)
>>> char>? 􏶃>? (􏶃 >?)
>>> char>=? 􏶃>=? (􏶃 >=?)
>>> char-ci=? 􏶁=? (􏶁 =?)
>>> char-ci<? 􏶁<? (􏶁 <?)
>>> char-ci<=? 􏶁<=? (􏶁 <=?)
>>> char-ci>? 􏶁>? (􏶁 >?)
>>> char-ci>=? 􏶁>=? (􏶁 >=?)
>>> char-alphabetic? 􏵹?
>>> char-lower-case? 􏵿?
>>> char-upper-case? 􏶀?
>>> char-title-case? 􏵾?
>>> char-numeric? 􏵻?
>>> char-symbolic? char-symbolic?
>>> char-punctuation? char-punctuation?
>>> char-graphic? char-graphic?
>>> char-whitespace? char-whitespace?
>>> char-blank? char-blank?
>>> char-iso-control? char-iso-control?
>>> char-extended-pictographic? char-extended-pictographic?
>>> char-general-category char-general-category
>>> char-grapheme-break-property char-grapheme-break-property
>>> make-known-char-range-list make-known-char-range-list
>>> char-upcase 􏶀
>>> char-downcase 􏵿
>>> char-titlecase 􏵾
>>> char-foldcase 􏶁
>>> char-grapheme-step char-grapheme-step