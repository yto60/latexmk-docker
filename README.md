# yto60/latexmk-docker

[arkark/latexmk-docker](https://github.com/arkark/latexmk-docker) をベースに、以下の変更を加えたもの

- コンパイル前に latexindent によるコード整形を実行
- デフォルトの `.latexmkrc` ファイルでは lualatex を使うように

イメージの大きさは 2.45GB です

## 使い方

### 基本

ソースコード (`main.tex`, `*.bib` など) のあるディレクトリに移動して、以下を実行

```shell
docker run --rm -it -v ${PWD}:/workdir ghcr.io/yto60/latexmk:latest
```

このリポジトリをクローンする必要はありません

### `main.tex` 以外の名前の `.tex` ファイルをコンパイルしたい場合

```shell
docker run --rm -it -v ${PWD}:/workdir ghcr.io/yto60/latexmk:latest latexmk-ext poyo.tex
```

### その他

詳しい使い方は [latexmk-docker/README.md at master · arkark/latexmk-docker](https://github.com/arkark/latexmk-docker/blob/master/README.md) を参照
