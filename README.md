# エラトステネスのふるいを実装する

「エラトステネスのふるい」とは、指定された整数以下のすべての素数を発見するためのアルゴリズムです。

[エラトステネスの篩 - wikipedia](http://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9)

## 問題

以下のように、与えられた整数から素数の列を返すプログラムを作成してください。アルゴリズムについては上記のWikipediaの情報を参考にコーディングしてください。

````
$ ruby eratos.rb 30
2, 3, 5, 7, 11, 13, 17, 19, 23, 29
````

## ゴール

- 問題を満足させるeratos.rbを作成してください。

## テストの実行方法

````
bundle install
bundle exec rspec
````
