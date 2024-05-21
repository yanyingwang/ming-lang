#lang at-exp s-exp "../../private/mapping-lang.rkt"


;;; (empty 空) not need as one defined same in base (null 空)
>>> first 􏷜 (弔 一)
>>> second 􏷛 (弔 二)
>>> third 􏷚 (弔 三)
>>> fourth 􏷙 (弔 四)
>>> fifth 􏷘 (弔 五)
>>> sixth 􏷗 (弔 六)
>>> seventh 􏷖 (弔 七)
>>> eighth 􏷕 (弔 八)
>>> ninth 􏷔 (弔 九)
>>> tenth 􏷓 (弔 十)
>>> last 末
>>> last-pair 􏹨 (末 双) ;; 末链（链一定为双） 􏿦 􏷽 􏹨
;; >>> rest 末** "􏿴除去甲以外剩下的􏿴" ;; 甲外 剩余 去甲 舍甲

>>> make-list 􏼓 (三 􏷫) ;; 复 㙏 复􏿴 构造复@racket[􏿴]（数据内各个元素是相同的，类比（昆虫）“复眼”一词取名 􏼓0

>>> list-set 攸 (亻 丨 攵) ;; 修 更 改 新 肖 攸 􏿛
>>> list-update 攸/入 ;; 攸

>>> index-of 弓  ;; 引 导 笈 扱 𫼛 弔
>>> index-where 􏹂 (弓 入) ;; 引 导  函 =》以例 􏿊 􏷻 弔 弓/入
>>> indexes-of 𰁣 (亻 弓) ;; 􏿉 􏿊 伋 􏷺 伄 𠇁 弓v
>>> indexes-where 􏹁 (亻 弓 入) ;; 􏿊 伄 引 𠇁 弓v 𰁣/入

>>> take 􏾺 (左 阝)
>>> take-right 𨚞 (右 阝)

>>> drop 􏷵 (左 刂) ;􏾹
>>> drop-right 􏷴 (右 刂) ;􏾸

>>> takef 􏾺/入
>>> takef-right 𨚞/入

>>> dropf 􏷵/入  ;􏾹
>>> dropf-right 􏷴/入  ;􏾸

>>> split-at 􏾺分
>>> split-at-right 𨚞分

>>> splitf-at 􏾺分/入
>>> splitf-at-right 𨚞分/入

>>> list-prefix? 􏾺于?
>>> take-common-prefix 䢼 (共 阝) ;;􏾺共项 􏾺共相 共同/􏾺 左䢼
>>> drop-common-prefix 􏷳分  ;; ;;􏾺异项 􏾺异相 共异/􏾺 左􏾶分
>>> split-common-prefix 䢼分

>>> append* 􏿜 (毌 􏷩) ;; 􏿜 􏾞

>>> add-between 𰂋 (亻 间) ;; 侠 夹 间 插 搀 掺 􏿃 侠
>>> flatten 偏 (亻 扁) ;; 平 伻
>>> shuffle 􏾜 (亻 糸);;洗 混 淆 纷 紊 􏾷
>>> check-duplicates 重
>>> remove-duplicates 𠝤 (重 刂) ; 去偅 􏿄

>>> filter-not 􏹇 (􏹌 刂) ;; 筛除 ; 淘 汰 剔 􏾽余 􏾼 􏷸
>>> partition 􏹈分  ;; 筛开 筛分 筛离 筛分 􏾽分
>>> count 􏹈巨  ;;度/入 计 λ 度/入

>>> filter-map 佫􏹈 ;; 佫之􏷹 􏷹佫 􏷯 {等同于@code{(􏹈 (入 (x) x) (佫 proc lst))}}
>>> append-map 佫􏿝 ;;@elem{等同于@code{(􏿝 (佫 proc lst))}} ;佫之􏿝

>>> range 􏼏 (米 􏷫) ;􏿴/数段 𥸬􏿴
>>> inclusive-range 􏼏* ;𥸬􏿴

>>> combinations 􏿴/组合
>>> permutations 􏿴/排列组合
>>> in-combinations 􏿴序列/组合
>>> in-permutations 􏿴序列/排列组合

>>> argmax 佫之􏺗 ; @elem{@racket[佫]之@racket[􏺗]}
>>> argmin 佫之􏺘 ; @elem{@racket[佫]之@racket[􏺘]}

>>> group-by 􏿴/分组
>>> cartesian-product 􏿴/笛卡尔积

 >>> remf 􏹇~ ;; 删/入 (elem "以例程做对比来消除某一符合条件元素" ) ;消 迭
;; >>> remf* 删*/入 (elem "以例程做对比来消除所有符合条件元素" ) ; 消* 迭， 见：fitler-not
