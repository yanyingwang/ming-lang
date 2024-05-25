#lang at-exp s-exp "../../../private/mapping-lang.rkt"


>>> cons 双 (又 又)  ;; 组合， 对:把两个东西双在一块,配对在一块.     接 合 连 构 结 创 造
>>> pair? 双? ;; 对子? 双

>>> car 阳 (阝 日)
>>> cdr 阴 {阝 月}

>>> null? 㐅? ;𥤦 空
>>> null 㐅

>>> list 􏿴   ;; 􏿴子
>>> list* 􏿫
>>> list? 􏿴?
>>> build-list 􏼎 (弓 􏷫) ;; 垿 序  􏼒

>>> list-ref 弔 ;; 􏿴之 􏿴及 予 序 第 𢭸 挮 𫼛
>>> length 巨 ; 度

;; >>> list-tail 去 "从􏿴中去掉n个元素后余下的􏿴" ;; 去 舍  ;; same as 佐 佑.....

>>> append 􏿝 (毌 􏷫) ;; 串 接 通 捅 􏿝 􏾟
>>> reverse 􏾛 (亻 屰) ;; 颠 倒 仮 􏾛 仮

>>> remove 􏹊~ ;; 刈 删 缺
>>> remw 􏹊~/􏾗
>>> remv 􏹊~/􏾃
>>> remq 􏹊~/侗
;; 刈~ should be acting as 刈, and result of (刈 'c '(a b c c d)) should be same as (刈* '(c) '(a b c c d))
>>> remove* 􏹊^
>>> remw* 􏹊^/􏾗
>>> remv* 􏹊^/􏾃
>>> remq* 􏹊^/侗

>>> sort 𠆯 (亻 川) ; 亻理 𠍣 􏿀 􏿀

>>> member 􏹋 (彐 阝)  ;; 后􏿴 索 ;; 索 寻 寻随
>>> memw 􏹋/􏾗
>>> memv 􏹋/􏾃
>>> memq 􏹋/侗
>>> memf 􏹅 (􏹌 阝)

>>> assoc 􏹉 (日 彐)  ; 探 挖 掘
>>> assw 􏹉/􏾗
>>> assv 􏹉/􏾃
>>> assq 􏹉/侗
>>> assf 􏹄 (日 􏹌)

>>> findf 􏹌 (彐 入)  ;; 查 找  选  查 寻 找 查 索 筛甲 @; 寻 找 查 搜 探 觅 检 索 俭 叟 傁
>>> filter 􏹈 (亻 􏹌)  ;; 滤 筛 选 挑 挑 选 择 􏾽


;; >>> for-each 巡 "酒席上给全座依次斟酒一遍称为巡杯（酒过三巡），这里意思是􏿴内元素依次执行某一个例程" ; 轮着 每 轮 依次 遍自 遍执 行 循序
>>> for-each 各 ; 𮞑 𮞑
>>> map 𢓜 (彳 各) ;; 各 依次应 映

>>> andmap 􏷱 (并 各) ;; 各有应 各都 映且 且佫 全 各且 􏷱 􏷮 􏷬
>>> ormap 􏷰 (戈 各) ;; 各无应 各有 映或 或佫 有 各或 􏷰 㦴 􏷭
>>> foldl 垎 (土 各)  ;; 各左参 摄 扌参 参予 挌参 敋参 掺 各参 臵 垎 珞 敋 垎 酪
>>> foldr 右垎  ;;右掺


>>> caar 阳之阳
>>> cdar 阳之阴
>>> cadr 阴之阳
>>> cddr 阴之阴
>>> caaar 阳之阳阳
>>> cdaar 阳之阳阴
>>> cadar 阳之阴阳
>>> caadr 阳之阴阴
>>> caddr 阴之阴阴
>>> caddr 阴之阴阳
>>> cdadr 阴之阳阴
>>> caadr 阴之阳阳
>>> caaaar 阳之阳阳阳
>>> caaadr 阴之阳阳阳
>>> caadar 阳之阴阳阳
>>> caaddr 阴之阴阳阳
>>> cadaar 阳之阳阴阳
>>> cadadr 阴之阳阴阳
>>> caddar 阳之阴阴阳
>>> cadddr 阴之阴阴阳
>>> cdaaar 阳之阳阳阴
>>> cdaadr 阴之阳阳阴
>>> cdadar 阳之阴阳阴
>>> cdaddr 阴之阴阳阴
>>> cddaar 阳之阳阴阴
>>> cddadr 阴之阳阴阴
>>> cdddar 阳之阴阴阴
>>> cddddr 阴之阴阴阴
