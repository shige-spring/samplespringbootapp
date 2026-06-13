# SampleSpringBootApp

このプロジェクトは、Spring Bootを使用したシンプルなWebアプリケーションです。

## 機能

- `/` へのGETリクエストに対して、`interactive_page.html`テンプレートを返します。
- `/health` へのGETリクエストに対して、"OK"という文字列を返します。

## ローカルでの実行方法

1. ソースコードをクローンする
    ```sh
    git clone <repository-url>
    cd SampleSpringBootApp
    ```

2. Gradleを使用してアプリケーションをビルドし、実行する
    ```sh
    ./gradlew bootRun
    ```

3. ブラウザで`http://localhost:8080/`にアクセスすると、アプリケーションが動作していることを確認できます。

## 依存関係

- Spring Boot
- Thymeleaf

## 著者

- 作者名 (メールアドレス)
