
# learm

## 目的

自作プログラミングについて学習します


## 環境構築

flex と bison を使います

flex と bison のインストール
```
brew install flex bison
```

以上

## 実行

実行したいバージョンのディレクトリ直下で以下を打ってください

```
./calc
```

このディレクトリではコンパイルして作成されるファイル群は全て含めることにしています

## コンパイル

この手順は不要ですが、試してみたい方はやってみてください

以下の手順でコンパイル

```
flex calc.l
bison -d calc.y
gcc gcc lex.yy.c calc.tab.c -o calc
```


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

足し算じゃないと syntax error が出ます
