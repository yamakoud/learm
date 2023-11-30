## 実行

実行したいバージョンのディレクトリ直下で以下を打ってください

```
./calc
```

※ calc は実行ファイルなのでコンパイル不要です

## コンパイル

コンパイルを試してみたい方はやってみてください

### 環境構築

コンパイルには flex と bison を使います。

flex と bison のインストール
```
brew install flex bison
```

インストールした後に以下の手順でコンパイルできます

```
flex calc.l
bison -d calc.y
gcc gcc lex.yy.c calc.tab.c -o calc
```
