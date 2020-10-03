# yto60/latexmk-docker

![docker-publish](https://github.com/yto60/latexmk-docker/workflows/docker-publish/badge.svg)

[arkark/latexmk-docker](https://github.com/arkark/latexmk-docker) をベースに、以下の変更を加えたもの

- コンパイル前に latexindent によるコード整形を実行
- デフォルトの `.latexmkrc` ファイルでは lualatex を使うように

イメージの大きさは 2.45GB です

## 使い方

### 基本

ソースコード (`main.tex`, `*.bib` など) のあるディレクトリに移動して、以下を実行

```shell
docker run --rm -it -v "${PWD}":/workdir ghcr.io/yto60/latexmk:latest
```

### `main.tex` 以外の名前の `.tex` ファイルをコンパイルしたい場合

```shell
docker run --rm -it -v "${PWD}":/workdir ghcr.io/yto60/latexmk:latest latexmk-ext some_other_name.tex
```

### サンプル

`/test` 以下のファイル群がコンパイルできることを確認済みです

### その他

詳しい使い方は [latexmk-docker/README.md at master · arkark/latexmk-docker](https://github.com/arkark/latexmk-docker/blob/master/README.md) を参照
