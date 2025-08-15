# テーブル設計

## users テーブル

| Column              | type       | Options |
| -------------------| ---------- |---------------- |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false  |
| name               | string     | null: false  |
| profile            | text       | null: false  |
| occupation         | text       | null: false  |
| position           | text       | null: false  |

### Association

- has_many :comments
- has_many :prototypes

## comments テーブル

| Column              | type        | Options |
| -------------------| ----------  |---------------- |
| content            | text        | null: false|
| prototype          | references  | null: false, foreign_key: true |
| user               | references  | null: false, foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user

## prototypes テーブル

| Column              | type        | Options |
| -------------------| ----------  |---------------- |
| title              | text        | null: false |
| catch_copy         | text        | null: false |
| concept            | text        | null: false |
| user               | references  | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user


