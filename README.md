# README

タスクリスト
# 課題：ログイン認証と一対多
タスク管理アプリに、ログイン認証機能をつけて、ログインしているユーザが、自身の作成したタスクのみにアクセスできるようにしてください。

ログイン認証機能をつけてください。
ログインユーザが、自分自身のタスクのみを操作可能 (CRUD) にしてください。
GitHub にプッシュしてください。
Heroku にデプロイしてください。



# 課題：Bootstrapのデザイン
タスク管理アプリに Bootstrap のデザインを施してください。 done.

以下に、仕様を述べます。

ナビバーを設置してください。 done.
フォームに Bootstrap のデザインを施してください。 done.
フォームの横幅に対する表示領域を調整します。下記の通りのグリッドを適用してください。 done.
767px以下(xs) では、12カラム（最大）で表示
768〜991px (sm) と 992〜1199px (md) では、 offset として2カラム追加して、8カラムで表示
1200px〜 (lg) では、offset として3カラム追加して、6カラム（半分）で表示
GitHub にプッシュしてください。


# 課題2
tasks テーブルに status カラムを文字列型で追加してください。 done.<br> 
作成と編集ページで status を編集可能にしてください。
（ status の input 要素の type 属性は、text でも select でも良いです）done.<br>
一覧と詳細ページで status を表示してください。<br>
status にバリデーションをつけてください。空文字を許さず、10文字以下
（未満でも可）を許します。<br>
GitHub に kadai-tasklist でプッシュしてください。<br>

# 課題１
Rails で tasklist アプリを作成してください。　done.<br>
タスクは、tasks テーブルを作成し、content カラムで構成されます。 done.<br>
<!---
モデル タスクリストのためデータはstring型
マイグレーションも実行済み。マイグレーションファイルの途中変更はNG
-->
タスクの Router には 「resources」 を利用してください。 done.<br>
「resources」 で生成される全てのアクションを実装してください。 done.<br>
View は index (タスク一覧）、show（詳細ページ）、new（作成ページ）、
edit（編集ページ）を作成してください。 done.<br>
また、トップページはタスクリスト一覧と同じページにルーティングしてください。done.<br>
GitHub に kadai-tasklist でプッシュしてください。done. <br>

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
