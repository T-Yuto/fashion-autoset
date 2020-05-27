# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

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
