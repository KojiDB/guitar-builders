# アプリケーション名
## guitar Builder
# アプリケーション概要
生産者と消費者をつなげるためのコミュニケーションツール。
# URL

# テスト用アカウント

# 利用方法

# アプリケーションを作成した背景
前職では、ギターを非常に重要な道具として利用していました。そのギターは、有名なメーカーからまだ無名なメーカー、さらには個人で製作する方も存在し、いい製作者が隠れていることも少なくありません。そのような製作者と消費者が出会えるツールがあれば、さらに業界が活性化すると思い、このアプリケーションを作成しました。
# 洗い出した要件

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# テーブル設計

## Usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| name               | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| address            | string  | null: false |
| post_number        | integer | null: false |
| phone_number       | integer |             |

### Association

-- has_many :comments

## Buildersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| brand_name         | string  | null: false |
| builder_email      | string  | null: false |
| builder_password   | string  | null: false |
| area               | string  | null: false |
| city               | string  | null: false |
| introduction       | text    | null: false |
| price_zone         | string  | null: false |
| phone              | integer | null: false |
| private_order_id   | integer | null :false |

### Association

-- has_many :guitars
-- has_many :comments

## Guitarsテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| guitar_name       | string     | null: false                    |
| guitar_type_id    | integer    | null: false                    |
| strings_number_id | integer    | null: false                    |
| price             | integer    | null: false                    |
| features          | text       | null: false                    |
| builder           | references | null: false, foreign_key: true |
| url               | text       |                                |

### Association

-- belongs_to :builder
-- has_many :comments

## Commentsテーブル

| Column  | Type       | Options                                      |
| ------- | ---------- | -------------------------------------------- |
| user    | references | null: false,unless:builder,foreign_key: true |
| builder | references | null: false,unless:user,foreign_key: true    |
| guitar  | references | null: false,foreign_key: true                |
| comment | text       | null: false                                  |

### Association

-- belongs_to :user
-- belongs_to :builder
-- belongs_to :guitar

# 画面遷移図

# 開発環境

# ローカルでの動作方法