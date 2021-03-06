# BOOK_MANAGEMENT

### **家にある本を管理できるアプリです。**

## :blue_book: 概要

### ・ユーザー登録

### ・カテゴリーの作成・削除

### ・本タイトル・表紙の画像の投稿

## :blue_book: URL

### **https://book-management-29736.herokuapp.com/**

## :blue_book: 利用方法

### まずサイトにアクセスしたら、ユーザー登録をしてください。

### その後に自分の持っている本のカテゴリーを作成し、そのカテゴリーの中に本のタイトルと表紙の画像を投稿します。

### Rubyのバージョンは6.0.0 です。

## :blue_book: 目指した課題解決

### このアプリは本を読む人が、増えていった本によって管理ができなくなってしまうことを防ぐためのアプリです。
### 捨てたかどうか覚えてない時や、貸しているときなどに同じ本を買ってしまうなどのミスを減らすことができます。
### 自分自身、父親が持っている本を買ってきてしまった経験があり、そういったミスを減らしたいと思い作りました。

## :blue_book: 要件定義
![2D3E22D9-53C6-42CC-9315-C7AC2EBA58D9_1_105_c](https://user-images.githubusercontent.com/70503081/97105238-b2119b00-16fc-11eb-9004-f7d26c66d923.jpeg)


### **https://docs.google.com/spreadsheets/d/1RBIYYQOE5Zm6uFlbR2sjAanYsHkjzE7Q_GrYU8bibh4/edit#gid=282075926**

## :blue_book: 実装した機能

### 1. ログイン機能
#### 再ログイン時に使い慣れたID/パスワードでログインできるようにする為です。
#### このアプリにログインした時点で、サインアップ画面に遷移するようになっています。
<img width="981" alt="735ACB13-A388-473B-901D-845E67AA5C51" src="https://user-images.githubusercontent.com/70503081/97105423-f2254d80-16fd-11eb-99fe-0cb854052ab7.png">

### 2. カテゴリー投稿機能
#### 本をカテゴリーで分けて管理できるようにする為です。
#### カテゴリーや作者で本を管理することができます。
![73ED8307-4A68-483F-B4C5-4120FAD88452](https://user-images.githubusercontent.com/70503081/97105415-dcb02380-16fd-11eb-98e4-d90dd29db12f.gif)

### 3. タイトル・画像投稿機能
#### 本にタイトルと画像をつけることで可読性を上げる為です。
#### 本のタイトルや買った場所、巻数などを書くことができます。
#### 本の表紙の画像を載せ、わかりやすくすることができます。
![BC1CBE85-B569-434E-89EC-D6CA1AE47888_1_105_c](https://user-images.githubusercontent.com/70503081/97105566-1fbec680-16ff-11eb-90a8-3a4e26c7b30b.jpeg)

### 5. カテゴリー削除機能
#### そのカテゴリーの本を捨ててしまったなどの場合に、カテゴリーを消すことができます。
![278F9C5B-1095-489A-A902-DE40ECDEFF98](https://user-images.githubusercontent.com/70503081/97105594-64e2f880-16ff-11eb-96e4-4984ac01866d.gif)

### 6. Basic認証
#### 世界中の人がログインできてしまう為、セキュリティーとしてつけています。
#### ユーザー名: admin   パスワード: 2222
![6E022D29-ECBC-4403-B581-2087B4C2BD8B_1_105_c](https://user-images.githubusercontent.com/70503081/97105626-a4a9e000-16ff-11eb-85a0-94dcce732f35.jpeg)

## :blue_book: 実装予定の機能

### 1. タイトル編集機能
#### 現状、タイトルを間違えても編集できない為です。

### 2. 本削除機能
#### 現状、本が削除できないので、画像やタイトルを間違えても何もできない為です。

## :blue_book: DB設計

### users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

#### Association

- has_many :categories
- has_many :books

### categories テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

#### Association

- belongs_to :user
- has_many   :books

### books テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | string     | null:false                     |
| user     | references | null: false, foreign_key: true |
| category | references | null: false, foreign_key: true |

#### Association

- belongs_to :category
- belongs_to :user

