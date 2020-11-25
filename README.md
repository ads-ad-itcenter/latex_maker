
## docker buildの手順

1. GitHub Container Registryの有効化
   * 個人アカウント: https://docs.github.com/en/free-pro-team@latest/packages/getting-started-with-github-container-registry/enabling-improved-container-support#enabling-github-container-registry-for-your-personal-account
   * 組織アカウント: https://docs.github.com/en/free-pro-team@latest/packages/getting-started-with-github-container-registry/enabling-improved-container-support#enabling-github-container-registry-for-your-organization-account
1. イメージをビルド
   ```sh
   docker build . --tag=ghcr.io/ads-ad-itcenter/latex_maker:バージョン
   ```
1. トークンを取得( https://github.com/settings/tokens )
    * 権限は「write:packages」が必須
1. ログイン
   ```sh
   cat トークンが書かれたファイル | docker login ghcr.io --password-stdin -u ユーザー名
   ``` 
1. push
   ```sh
   docker push ghcr.io/ads-ad-itcenter/latex_maker:バージョン
   ``` 