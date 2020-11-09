# latex maker

## 使い方

### 必要環境
* [Docker](https://www.docker.com/products/docker-desktop)
* [Visual Studio Code (vscode)](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)

### 環境準備

1. dockerイメージのbuild
    ```sh
    cd このディレクトリのパス
    docker-compose build
    ```

2. vscodeの拡張機能をインストール
    * [こちら](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)を開き、Installからインストール

### 起動

1. このディレクトリをvscodeで開く  
   以下のいずれかで開く
    * コマンドライン
      ```sh
      code このディレクトリのパス
      ```
    * 「File」->「Open Folder...」から選択
    * フォルダを右クリックし「Codeで開く」
      
2. コンテナをvscodeで開く  
   以下のいずれかで開く
   * 1. vscodeの左下の `><` アイコンをクリック
     2. 「Remote-Containers: Reopen in Container」を選択
   * 1. vscode で `Ctrl` + `Shift` + `P` でコマンドパレットを開く
     2. 「>containers reopen」などと打ち込んで候補に出る「Remote-Containers: Reopen in Container」を選択

### 使い方
1. texファイル(サンプル: main.tex)を開く
2. * texファイル上書き: 自動コンパイル
   * `Ctrl` + `Alt` + `B`: 手動コンパイル
   * `Ctrl` + `Alt` + `V`: プレビュー