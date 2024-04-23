#lang scribble/manual

@(require (for-label racket ming ming/list ming/vector)
           scribble/example
           scribble-rainbow-delimiters)
@(define the-eval
         (make-eval-factory '(racket/base racket/list ming/list ming/racket/base ming/racket/list)))


@(require (file "../private/scribble-styles/css/ming-fonts.css.rkt"))
@css/ming-fonts
@(require scribble-rainbow-delimiters)
@script/rainbow-delimiters*


@title[#:tag "preface"]{preface}
ref to: @url{http://www.yanying.wang/SOICOL}

@section{Rationale}
Lisp, as an ancient programming language, when I was learning it with inherent ideas from modern programming languages such as Ruby, I noticed there are a few distinctions. Among them, The most prominent one is the forms.

LISP is profoundly uniformed, all are parenthesis. On the contrary, most modern PLs adhere to use different forms for different operations:
@tabular[#:style 'boxed
#:column-properties '(left left)
#:row-properties '(bottom-border ())
(list
(list @bold{Operation} @bold{Ruby code} @bold{Racket code})
(list "number addition" @code{1+2+3}     @code{(+ 1 2 3)} )
(list "create array"    @code{[1, 2, 3]}           @code{(vector 1 2 3)})
(list "create hash"     @code{{a: 1, b: 2, c: 3}}  @code{(hash 'a 1 'b 2)}  )
(list "create array of a range of numbers"   @code{Array(1..5)}     @code{(build-list 5 values)})
(list "create array of duplication elements" @code{Array.new(3, 1)} @code{(make-list 3 1)})
)]

By the examples shown above, we can see in Ruby, different operations are formed in distinctive forms, while in Racket they are in same form: elements in one parenthesis. This each other resemled form of LISP impedes people to distinct them on a glimpse, thus the meaning of operations are more blamed on the function names(first word of elements in parenthesis).

In conclusion, the function names of LISP take more responsibilities to annotate operations than morden PLs. The more informations that function names show us, the better we can distinguish them and understand the purpose and usage of them.


@section[#:tag "retrofit-chinese-to-lisp"]{如何改进LISP的难读性}
LISP诞生在上世纪五十年代，现今的编程语言相较之，舍弃了S表达式，引入了更多的关键字来替换括号，表达式也大都采用符合自然语言使用习惯的中缀表达。

但LISP的精髓之处就是他的S表达式，舍弃S表达式并不是我要追求的。

所以进而的去想，S表达式的“谓主宾”形式，其中最为重要的其实是“谓语”，一个表达式的关键含义，也均是由首位的“谓语”来阐述的。这个“谓语”能表达和涵盖的意思越多，也就越让人可以更容易的读懂整个表达式的含义。

比如你可以在这个“谓语”里指明“主”“宾”或者更加具体的位置单词的含义。理想情况下，比如这个“谓语”是一个图画，这个图画明确的表达出来了图画后面字符以及图画执行后的输出结果的数量、形式、类型等等。如此，整个括号里面的内容就会变得异常的容易解读了。


@section[#:tag "take advantage of chinese"]{中文的优势}
而提到中文就不得不说，汉语的文字，本身就是由图画演变而来的，天然的在阅读和理解上比英文更加有优势。

中文相较英文，有办法用短的长度表达更丰富的内容。英文因为有语法的存在，相较中文只有左右维度缺少上下维度，因此在空间利用上，肯定是不如中文的。

显而易见的，中文相较于英文，可以用更短的空间表达出更多有意义的含义。@linebreak{}
It's very obvious to notice that comparing to English, Chinese can use less space to express much more meaningful connotations.

另外，对于函数式编程语言，其世界仿佛是平的，所有被命名的数据亦或是待使用的函数，好像都生活在同一个空间里。因此这些名字越是有逻辑，就越能体现出它和周围其他名字的关联关系，对使用者而言也就越有意义。

据我调查思考，汉语在语法上更加自由，在语素的颗粒度上更加精细，在书写表达上更有上千年的实践和文化积淀（简练的文言文所淬炼出来的汉字含义，古诗词的工整对账所催生出来的同义词反义词，庞大的地区方言所延展出的在使用上的灵活性），另更有近代吸收西方文化后的白话文改革和简体中文、拼音、标点符号的引入。

上所述种种，更加使用人口之众，都让我认为，将LISP的语法寄宿在汉语下，将拥有强大表达力的中文融入在S表达式幽幽的括号中所产生的编程语言，会将人机交互带入另一层境界......




@section[#:tag "the future of chinese programming language and chinese characters"]{中文编程语言之汉字前瞻}
@smaller{此章节为我部分实现了名语言，催生出了新的想法后的新增：}

我在实现名语言的时候，受现代汉语的影响，大部分的情况下，只是在尝试如何把不同的常用汉字做组合表达。因为现代汉语是在新文化运动的思潮下所形成的，可以说是很大程度上的受了英文这种在表达上很简易的语言（形式层面上）的影响所形成的，而在名语言中我常常要追求用单字来命名概念，因为这样子会更加的简洁明了（语义层面上），其实这很大程度上的就是古文言文的特色。

我因此常常的需要去查找一些古代汉字的含义和用法，这让我的关注点延伸到了汉字在其内部结构上是如何做组合表达的（汉字的造字法），以及不同汉字是如何通过共用偏旁来体现事物之间的内在联系的（期间还去@hyperlink["https://github.com/yanyingwang/mzhengma" "研究了一下郑码输入法"]）。

我因而发现，其实可以借用汉字的造字法，创造一些汉字来命名编程语言内部的原有概念。创造汉字来命名这些概念的过程中，天然的会共用到一些偏旁。这些被创造出来的汉字，也天然的更能体现出编程语言内部的这些概念相互之间的关联关系。

如果我们撇掉汉字的概念不谈，那这其实相当于创造了一个字符系统。然后我们用这个字符系统作为人机交互的中间语言，而这个中间语言也就是人类使用编程语言的API。

这样讲太抽象，也体现不出来采用汉字造字法来命名编程语言原有内部概念的优势，我另有举例说明如何选用或采用汉字的造字法来新造汉字去表达LISP编程语言里面的一些固有概念。



@section[#:tag "ming-s-retrofit"]{中文化一角}
@smaller{此章节为我部分实现了名语言后的新增：}

我在序的《@secref["retrofit-chinese-to-lisp"]》一章节中，曾谈到说把LISP中文化是很有意义的，中文可以改进LISP的难读性并为其带来新的活力。本章节即是我结合之前所说，所实现的一部分名语言的代码。


@subsection{pairs}
@tech[ #:doc '(lib "scribblings/reference/reference.scrbl") "pairs"]是LISP语言非常基础的一个数据结构，@tech[ #:doc '(lib "scribblings/reference/reference.scrbl") "lists"]、 @secref["dicts" #:doc '(lib "scribblings/reference/reference.scrbl")]等更为复杂的数据结构都是它的衍生。

一个pair包含两个数据，构造一个pair的函数是@racket[cons]。

pair在名语言中，被翻译为“@racket[对]”（后又改为了@racket[双]）。“对”在中文中可以是动词（对酒当歌），也可以是名词（成双成对）。因此，可以用“对”这个单字来构造所有跟“pair”有关的数据结构。

对于英文而言，“pair”其实也是可以作为动词使用的，但是英文单词和语法的基石是区分词性，区分词性也更利于意思的表达。

然而对于中文来说，严格区分词性不是中文的惯例。如果需要，比如“对子”则肯定是一个名词了。虽然并非所有的词都是通过加“子”变成名词的，但中文具备这种能力，只是在实际使用中没有做完全发挥。

通常情况下，对于编程语言来说，一旦有了一个中心意义的实体，就会在编程中因为各种情况需要不断的围绕它定义名字。中文强大的造词能力所能定义出来一些相关词汇集合，从这些词汇的构成上天然的就能看出他们之间所隐含存在着的一些关联和衍生关系，这对于程序员记忆和理解代码是有极大帮助的。

@examples[#:eval (the-eval) #:label "英文"
(cons 'a 'b)
(pair? '(a . b))
]

@examples[#:eval (the-eval) #:label "中文"
(双 'a 'b)
(双? '(a . b))
]

仿照@racket[双]，进而又有了@racket[􏿴]、@racket[􏿫]、@racket[􏿲]、@racket[􏿱]等。


@subsection{make-list和build-list}
我们以两个Racket标准库里面的例程（Procedures）：@racket[make-list]和@racket[build-list]为例来尝试阐述所说。

@subsubsection{原英文}
从他们的英文名字上，我们很容易得出这两个例程都是用来创建“@racket[list]”的（名语言称之为“@racket[􏿴]”）。

@itemlist[
@item{
@examples[#:eval (the-eval) #:label @elem{对于@racket[make-list]有：}
(make-list 3 'foo)
(make-list 6 "foo")
]
很容易明白，它是用来创建一个包含n个相同值的􏿴的。
}
@item{
@examples[#:eval (the-eval) #:label @elem{对于@racket[build-list]有：}
(build-list 5 values) (code:comment "生成一个包含0-4这个5个数的􏿴。")
(build-list 10 values) (code:comment "生成一个包含0-9这个10个数的􏿴。")
(build-list 10 add1) (code:comment "生成一个包含0-9这个10个数的􏿴，并且每一个数都加上1。")
(build-list 10 (lambda (e) (* e e))) (code:comment "生成一个包含0-9这个10个数的􏿴，并且每一个数都是自身的平方。")
]
@racket[build-list]的行为更加复杂些：它是用来生成一个􏿴，这个􏿴包含从0数起的n个数，并且生成的时候，这些数是可以被做一些附加处理的。
}
]

对于@racket[make-list]和@racket[build-list]这两个例程的具体作用，从名字上我们仅仅能看出它是用来创建􏿴的，并不能看出它的其它更具体的作用。

@subsubsection{中文化后}
中文化后，@racket[make-list]叫“复􏿴”，又进而简化为单字“@racket[􏼓]”，意为􏿴内部的每个元素是重复的；@racket[build-list]叫“序􏿴”，又进而简化为单字“@racket[􏼎]”，意为􏿴内部的元素是按照一定的顺序排列的。

@itemlist[
@item{第一，显然这两个例程的名字有着较原英文更加丰富的含义，这是我上文提到的我所说的中文化的意义；}
@item{第二，古中文即文言文中，字词的词性很弱，或者说是常常有名词活用动词，动词活用名词的用法。故此，“􏿴”这个字是可以被用作动词的，意为创建􏿴、􏿴起来一组数据、将一组数据存在􏿴结构中。总之，字词的表意性因其所处的语境而可以有被活用的留白；}
@item{第三，从整体性的角度讲，和其他例程名放在一块，名字显得有更加有规律可循，语言使用者更容易从整体的角度出发获取到更多意义上的理解。}
]


当然你可以说，这其中的“第一”是因为这两个例程原本的英文名字起的不好。

但我们更加应该看到的是，这本质上反应的是一种文化上的差异：英文世界里是存在着一种把事情都简单化的趋向的，这是我认为这两个例程都采用了@litchar{make-list}和@litchar{build-list}的根本原因，我们即使找出更加贴切的英文词汇来作为这两个例程的名字，但或许这些词汇在实际的实现上看起来都是不够直观的。

但对中文来讲就不一样了，中文的造词能力更强：支撑中文造词能力强的技术层原因是它的单字表意特性；非技术层原因是它所造出的词是更加容易被接收者所理解的（这可能和它字的表象特性有关）。

@examples[#:eval (the-eval) #:label "中文化后的示例："
(􏿴 'val 'val 'val)
(􏼓 'val 3)

(􏿴 1 2 3 4 5)
(􏼎 5 􏽊)
(􏼎 5 (λ (n) (􏼓 'val n)))
]

@section{如何做}
@itemlist[
@item{Racket语言，编程语言设计和实现的平台，可先用它设计一个方言，并逐步汉化翻译已实现了的内部库。}
@item{在如上的过程中，逐步建立自动化代码翻译工具，以便让更多人更容易的投入到翻译中。}
@item{循环往复，另可在翻译中引入切合汉语文化的有切实意义的新特性和语法糖。}
]

@section{释惑}
@itemlist[
@item{名语言的目的是为了探索以汉语的博大精深，兼容并包，是否可以让编程语言以另外一种方式变得更容易被人理解。}
@item{为什么选择LISP/Racket语言实现：第一，我认为LISP的语法特性间接的做了很大程度的留白，这得以让中文可以最大程度的发挥出它的优势。第二，是认为scheme语言的特殊性，其高级抽象形态的实现都可以回溯到最基本的函数定义上，这也得以让人可以循环渐进的替换完其固有的内部英文定义。}
@item{名会秉持实事求是的精神，不会采用通俗的计算机中文中已有的通用翻译作为编程语言关键字，而是在兼顾汉语的古今含义上做出折取选择。故此，其字词的选择不会一味的去追求完全的文言文化，也不会追求完全的白话文化，甚至不会追求完全汉化（西文字母、标点符号所独有的优点不容被忽视）。}
@item{另外我认为，名的实现过程，除去代码上的东西外，会类似于一个汉语地方方言的实现。所谓方言，比如河南话更甚于说是吴语，即是选择了汉语中的部分字词，定义出了自己方言的特殊意义。而名的实现，我认为会类似于这样一个过程，只不过是在选择时，需要兼顾编程和相应的英文词汇而翻译。}
@item{名的其中之重要一目的是为了给汉语编程探索和指明道路。}
]

@section{汉语字典索引}
@itemlist[
@item{@url{https://www.hanyuguoxue.com}}
@item{@url{http://qiyuan.chaziwang.com/}}
@item{@url{https://www.hwxnet.com/}}
@item{@url{https://cidian.qianp.com/}}
]
