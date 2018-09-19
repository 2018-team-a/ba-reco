# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create({:name_family_name => "河合",:name_name => "佑弥",:furigana_family_name => "かわい",:furigana_name => "ゆうや",:postal_code => "1234-5678",:address =>"東京都世田谷区",:phone_number => "090-1234-5678",:email => "aaaaa@aaaa.com",:password => "123456"})
user2 = User.create({:name_family_name => "kawai",:name_name => "yuya",:furigana_family_name => "かわい",:furigana_name => "ゆうや",:postal_code => "1234-5678",:address =>"東京都世田谷区",:phone_number => "090-1234-5678",:email => "aaaaa@aaaa.com",:password => "123456"})

label = Label.create({:name => "ジャニーズ事務所"})

genre = Genre.create(:name => "J-pop")
artist = Artist.create(:name =>"NEWS")


product = Product.create({:title => "newsベストアルバム",:label_id => label.id,:price => 3500,:image => "",:release_date =>20180916,:stock_count => 5,})
Cart.create({:product_id => 1,:user_id => user.id,:sheet_number => 1})

disc1 = Disc.create({:product_id =>product.id})
disc2 = Disc.create({:product_id =>product.id})


Tune.create({:title =>"チャンカパーナ",:artist_id =>1,:genre_id =>1,:disc_id => disc1.id,:track_number => 1})
Tune.create({:title =>"生きろ",:artist_id =>1,:genre_id =>1,:disc_id => disc1.id,:track_number => 2})
Tune.create({:title =>"恋を知らない君へ",:artist_id =>1,:genre_id =>1,:disc_id => disc1.id,:track_number => 3})
Tune.create({:title =>"フルスイング",:artist_id =>1,:genre_id =>1,:disc_id => disc1.id,:track_number => 4})
Tune.create({:title =>"恋のABO",:artist_id =>1,:genre_id =>1,:disc_id => disc2.id,:track_number => 5})
Tune.create({:title =>"さくらガール",:artist_id =>1,:genre_id =>1,:disc_id => disc2.id,:track_number => 6})
Tune.create({:title =>"WEEEK",:artist_id =>1,:genre_id =>1,:disc_id => disc2.id,:track_number => 7})
Tune.create({:title =>"渚のお姉サマー",:artist_id =>1,:genre_id =>1,:disc_id => disc2.id,:track_number => 8})
Tune.create({:title =>"Wonder",:artist_id =>1,:genre_id =>1,:disc_id => disc2.id,:track_number => 9})

Product.create(:title => "商品１", :label_id => 1, :price => 1000, :image_id => "aaa", :release_date => 1.1, :stock_count => 30 )

Disc.create(:product_id => 1)

