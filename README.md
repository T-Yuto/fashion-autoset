# README
- Ruby version 2.5.1

- Rails version 5.2.4

- Server heroku

- Database AWS S3

## users テーブル

| Column   | Type   | Options                 |
| -------- | ------ | ----------------------- |
| name     | string | null: false, index:true |
| email    | string | null: false             |
| password | string | null: false             |

- has_many :images

## images テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| upper_image | text       |                                |
| down_image  | text       |                                |
| user_id     | references | null: false, foreign_key: true |

## Asociation

- belongs_to :user

## このアプリの使い方
初めにユーザー登録を行います。
![ユーザー新規登録](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/user_new_1.png)
![ユーザー新規登録](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/user_new_2.png)
### 画像登録機能
ページ右上部の登録ボタンから登録ページへ
上下の画像を選択
登録する
![画像登録](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/image_new_1.png)

### 画像のランダム表示
TOP画面で登録された画像がランダムに一枚表示
![TOP](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/top_change_description.png)

### 編集機能
ページ右上部のタブからマイページへ
画像の編集ボタンから編集ページへ
![画像編集](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/image_edit_1.png)
![画像編集](https://raw.githubusercontent.com/T-Yuto/fashion-autoset/Readme/README/image_edit_2.png)