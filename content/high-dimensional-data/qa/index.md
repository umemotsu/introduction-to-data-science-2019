---
title: Q&A
date: 2019-11-25T22:27:38+09:00
weight: 2
---

## 主成分分析について

### 説明が速くて、P17の数式が追えなかった。

次回の講義で簡単におさらいと補足をします。

### 「特徴量が正規分布に従う」という仮定が存在する？

正規分布に従っていないデータでも計算は可能ですが、うまく分解ができないこともあります。これも次回に補足します。

## こんな話が聞きたい

### 情報検索（Information Retrieval; IR）に関する話題

ところどころに混ぜたいと思います。

### （統計的？）因果推論

私もよく分かっていません。[この本](https://www.asakura.co.jp/books/isbn/978-4-254-12241-1/)を読んで勉強しています。

ちなみに、IRの最近の研究の1つに、反事実的推論を用いて位置バイアスを含むクリックログからバイアスのないランキングを学習するというものがあります。[^Joachims+-2017]

[^Joachims+-2017]: Thorsten Joachims, Adith Swaminathan, and Tobias Schnabel. 2017. Unbiased Learning-to-Rank with Biased Feedback. In Proceedings of the Tenth ACM International Conference on Web Search and Data Mining (WSDM '17). ACM, New York, NY, USA, 781-789. DOI: https://doi.org/10.1145/3018661.3018699

### 勾配ブースティング

これも詳しく知りません。興味のある人は[このあたり](https://www.slideshare.net/itakigawa/ss-77062106)を眺めてみると良いかもしれません。

ちなみに、IR分野でも少し前までは、ランキング学習手法といえば勾配ブースティングに基づくLambdaMARTという印象でした。[^Burges-2010]

[^Burges-2010]: Chris J.C. Burges. 2010. From RankNet to LambdaRank to LambdaMART: An Overview. Microsoft Research Technical Report MSR-TR-2010-82. URL: https://www.microsoft.com/en-us/research/publication/from-ranknet-to-lambdarank-to-lambdamart-an-overview/

### Kaggleで使える実践的なテクニック

参加したことないのでよく分かりません。ただ、上記の勾配ブースティングがよく使われるイメージはあります。

### 現場で起きた話

現場というわけではないですが、データ解析に関する実体験を次回に少し紹介します。

## データサイエンス

### お薦めのサイトや書籍

あまり読まないのでよく知りません。方法論を知りたいのであれば、機械学習・統計・データマイニング・データベースなどの良書や解説サイトは豊富にあるので、それらを見てみるのも良いかと思います。

あとは、Kaggleのコンペに参加したり、企業インターンシップに行ったりして、あるいは自分の研究を通じて、実データにたくさん触れるのが大事だと思います。

### 便利なツール

粗いレベルで言えば、Python＋定番の汎用ライブラリ＋対象タスクに特化したライブラリという組み合わせ？

### これをすべし

上にも書いたように、実データにたくさん触れること。学んだ手法を適用するのも良いけど、高い精度を得ることだけを目的とするのでなく、その背後で何が起きているのか等をよく考えること。関連する話として、国際会議[SIGMOD2019](https://sigmod2019.org/)のキーノート「Responsible Data Science
」を次回の講義で少し紹介します。
