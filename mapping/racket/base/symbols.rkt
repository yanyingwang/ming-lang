#lang at-exp s-exp "../../../private/mapping-lang.rkt"

>>> symbol? 􏷂?
>>> symbol-interned? 􏺏? (罒 􏷂 ?)
>>> symbol-unreadable? 􏺋? (龱 􏷂 ?)
>>> symbol->string 􏷂化􏷁
>>> string->symbol 􏷁化􏷂
>>> string->uninterned-symbol 􏷁化􏺍
>>> string->unreadable-symbol 􏷁化􏺋
>>> gensym 􏺌 (􏺍 米)
>>> symbol<? 􏷂<?
