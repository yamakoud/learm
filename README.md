
# learm

## 目的

プログラミング言語の自作について学習します

## learm 1

足し算だけができる言語です
/1 ディレクトリに入れています

以下のように動かすことができます

```
kyama@Nyanko-Book-Pro learm % cd 1
kyama@Nyanko-Book-Pro 1 % ./calc
1 + 2
3
```

足し算じゃないと syntax error が出る、、、ことがあります


## 環境構築

手元でコンパイルしたい場合はこの手順を実行してください。

コンパイルには flex と bison を使います。

flex と bison のインストール
```
brew install flex bison
```

以上。

## 実行

実行したいバージョンのディレクトリ直下で以下を打ってください

```
./calc
```

※実行ファイルは作成済みなのでコンパイル不要です。直接実行ファイルを叩いて動かしてみることが可能になってます

## コンパイル

この手順は不要ですが、試してみたい方はやってみてください

以下の手順でコンパイル

```
flex calc.l
bison -d calc.y
gcc gcc lex.yy.c calc.tab.c -o calc
```


