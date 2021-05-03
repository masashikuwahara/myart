# MyArt
自分の好きな絵画、または描いた絵を投稿することができます

[![Image from Gyazo](https://i.gyazo.com/7bc56b36be80c879f6a7751a9abd0c0c.png)](https://gyazo.com/7bc56b36be80c879f6a7751a9abd0c0c)

# アプリケーション概要
ユーザー新規登録後、共有したい絵を説明文とともに投稿することで
トップページに表示されます。
各詳細ページにコメント機能もあり、他のユーザが感想を言い合ったり
チャットもすることができます。

# URL
https://myartholder.herokuapp.com/

# テスト用アカウント
sample@email.com パスワード:111111
<br>test@gmail.com   パスワード:111111

# 利用方法
- トップページから新規登録、ログイン
- ログイン後の投稿するから写真を選択し、概要、感想を記入ののち投稿できる
- それぞれの詳細ページにコメント欄がありその絵についての感想をコメントできる
[![Image from Gyazo](https://i.gyazo.com/657d8d97e34f0e1c774fa796ab87e1e7.gif)](https://gyazo.com/657d8d97e34f0e1c774fa796ab87e1e7)

# 目指した課題解決
お気に入りの画家の絵を共有したい、
もしくは自分の絵を共有したい。

# 洗い出した要件
| 優先順位<br>（高：3、中：2、低：1） | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間） |
| --- | --- | --- | --- | --- | --- |
| 3 | 投稿機能 | 画像の投稿、記事を投稿 | 右上にある投稿ボタンをクリックすると投稿ページに飛びそこから投稿する | 投稿ページにて画像、説明、感想を入力し投稿することができる | 3h |
| 3 | 編集機能 | 投稿した画像、記事の編集 | それぞれの投稿ページをクリックすると詳細ページに飛びそこから編集ができる | 詳細ページで編集ボタンから編集ページに遷移できる<br>投稿内容を編集、更新できる | 3h |
| 3 | 削除機能 | 投稿した画像記事の削除 | それぞれの投稿ページをクリックすると詳細ページに飛びそこから削除ができる | 詳細ページの削除ボタンで投稿記事を削除できる | 2h |
| 3 | 検索機能 | 投稿した記事の検索、参照 | トップページ上部に検索バーがありそこから投稿写真を検索できる | 検索バーにタイトルを入力することで投稿記事を検索し、表示することができる | 2h |
| 3 | ユーザー管理機能 | ユーザーの新規登録ができる<br>ログインログアウトできる | 右上のボタンからログインログアウトができる | 新規登録ページでユーザー名、メールアドレス、パスワード、好きな画家、好きな美術館を入力しユーザー登録ができる<br>ログインページでメールアドレス、パスワードを入力しログインができる<br>ログアウトボタンでログアウトできる | 3h |
| 2 | コメント機能 | 投稿に関するコメントができる | 詳細ページからコメントができる | 詳細ページ下部のコメントフォームからコメントすることができる<br>チャットのような使い方もできる | 2h |

# データベース設計


## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| favorite   | text   | null: false |
| museum     | text   | null: false |

## pictures テーブル

| Column     | Type          | Options     |
| ---------- | ------------  | ----------- |
| title      | string        | null: false |
| artist     | string        | null: false |
| where      | string        | null: false |
| image      | ActiveStorage |             |
| user       | references    |             |

## comments テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| text        | text       | null: false |
| user        | references |             |
| picture     | references |             |

# ER図

[![Image from Gyazo](https://i.gyazo.com/50f51bff0545a86a73c75468b9ebfde5.png)](https://gyazo.com/50f51bff0545a86a73c75468b9ebfde5)