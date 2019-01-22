# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@book = Book.new
@book.title         = '野球入門　170km/hの投球術'
@book.author        = '沢村栄治郎'
@book.genre         = 'スポーツ'
@book.date_of_issue = '2011.8.9'
@book.summary       = 'あのメジャー・リーガーも実践！ 170km/hを投げる為の投球術を科学的に図説'
@book.user_id       = 0
@book.number        = 3
@book.rend          = '[貸出]'
@book.save

@book = Book.new
@book.title         = '金太郎の必ず儲かるFX！'
@book.author        = '倉持金太郎'
@book.genre         = 'ビジネス'
@book.date_of_issue = '2018.1.1'
@book.summary       = '著者が実践した、10万円から数億を稼ぐ方法を伝授'
@book.user_id       = 0
@book.number        = 1
@book.rend          = '[貸出]'
@book.save

@book = Book.new
@book.title         = '人生のプログラミング（上）'
@book.author        = '井戸端純'
@book.genre         = '小説'
@book.date_of_issue = '2017.12.25'
@book.summary       = 'あの直木賞作家が、時代の波に流されてプログラマーになった男の壮絶な人生を描く'
@book.user_id       = 0
@book.number        = 5
@book.rend          = '[貸出]'
@book.save

@book = Book.new
@book.title         = '人生のプログラミング（下）'
@book.author        = '井戸端純'
@book.genre         = '小説'
@book.date_of_issue = '2017.12.25'
@book.summary       = 'あの直木賞作家が、時代の波に流されてプログラマーになった男の壮絶な人生を描く'
@book.user_id       = 0
@book.number        = 5
@book.rend          = '[貸出]'
@book.save

@book = Book.new
@book.title         = 'メキシコの壁'
@book.author        = 'Donald Hanafuda'
@book.genre         = 'ドキュメンタリー'
@book.date_of_issue = '2017.1.20'
@book.summary       = '全米が泣いた!! 衝撃の話題作'
@book.user_id       = 0
@book.number        = 1
@book.rend          = '[貸出]'
@book.save

# @book = Book.new
# @book.title         = ''
# @book.author        = ''
# @book.genre         = ''
# @book.date_of_issue = ''
# @book.summary       = ''
# @book.user_id       =
# @book.number        =
# @book.save

# @book = Book.new
# @book.title         = ''
# @book.author        = ''
# @book.genre         = ''
# @book.date_of_issue = ''
# @book.summary       = ''
# @book.user_id       =
# @book.number        =
# @book.save

# @book = Book.new
# @book.title         = ''
# @book.author        = ''
# @book.genre         = ''
# @book.date_of_issue = ''
# @book.summary       = ''
# @book.user_id       =
# @book.number        =
# @book.save

# @book = Book.new
# @book.title         = ''
# @book.author        = ''
# @book.genre         = ''
# @book.date_of_issue = ''
# @book.summary       = ''
# @book.user_id       =
# @book.number        =
# @book.save

# @book = Book.new
# @book.title         = ''
# @book.author        = ''
# @book.genre         = ''
# @book.date_of_issue = ''
# @book.summary       = ''
# @book.user_id       =
# @book.number        =
# @book.save

@user = User.new
@user.name          = '鈴木一郎'
@user.address       = '千葉県成田市'
@user.login         = false
@user.rend1         = 1
@user.rend2         = 2
@user.rend3         = 3
@user.save

@user = User.new
@user.name          = '田中二郎'
@user.address       = '神奈川県横浜市'
@user.login         = false
@user.rend1         = 0
@user.rend2         = 0
@user.rend3         = 0
@user.save


@user = User.new
@user.name          = '佐藤三郎'
@user.address       = '愛知県名古屋市'
@user.login         = false
@user.rend1         = 0
@user.rend2         = 0
@user.rend3         = 0
@user.save


@user = User.new
@user.name          = '高橋四郎'
@user.address       = '東京都千代田区'
@user.login         = false
@user.rend1         = 0
@user.rend2         = 0
@user.rend3         = 0
@user.save


@user = User.new
@user.name          = '伊藤五郎'
@user.address       = '福岡県福岡市'
@user.login         = false
@user.rend1         = 0
@user.rend2         = 0
@user.rend3         = 0
@user.save


