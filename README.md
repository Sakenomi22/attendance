# README

## adminsテーブル
| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| email            | string | null: false |
|encrypted_password| string | null: false |
| family_name      | string | null: false |
| first_name       | string | null: false |
| family_name_kana | string | null: false |
| first_name_kana  | string | null: false |
| birthday         | date   | null: false |
| post             | string | null: false |

### Association
has_many :regular_hours
has_many :comments
has_many :users

## usersテーブル
| Column           | Type       | Options                     |
| ---------------- | ---------- | --------------------------- |
| email            | string     | null: false                 |
|encrypted_password| string     | null: false                 |
| family_name      | string     | null: false                 |
| first_name       | string     | null: false                 |
| family_name_kana | string     | null: false                 |
| first_name_kana  | string     | null: false                 |
| birthday         | date       | null: false                 |
| admin            | references | null:false foreign_key :true|

### Association
has_many :attendances
belongs_to :admin
has_many :comments

## regular_hourテーブル
| Column         | Type       | Options                       |
| -------------- | ---------- | ----------------------------- |
| regular_hour   | time       | null: false                   |
| regular_start  | time       | null: false                   |
| regular_end    | time       | null: false                   |
| admin          | references | null: false foreign_key :true |

### Association
belongs_to :admin

## attendanceテーブル
| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| start_time    | time       | null: false                   |
| end_time      | time       | null: false                   |
| overtime      | integer    | null: false                   |
| user          | references | null: false foreign_key :true |

### Association
belongs_to :user