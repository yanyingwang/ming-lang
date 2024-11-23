#lang at-exp s-exp "../../../private/mapping-lang.rkt"

>>> symbol? 􏷂?
>>> symbol-interned? 􏺏? (罒 􏷂 ?)
>>> symbol-unreadable? 􏺋? (龱 􏷂 ?)
>>> symbol->string 􏷂化句
>>> string->symbol 句化􏷂
>>> string->uninterned-symbol 句化􏺍
>>> string->unreadable-symbol 句化􏺋
>>> gensym 􏺌 (􏺍 米)
>>> symbol<? 􏷂<?
