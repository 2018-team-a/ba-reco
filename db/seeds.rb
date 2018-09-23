# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Label.create(:name => "bvex")

Product.create(:title => "商品１",:label_id => 1,:price => 1000,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "商品２",:label_id => 2,:price => 1500,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "商品３",:label_id => 1,:price => 2000,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "CD４",:label_id => 2,:price => 2500,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "CD５",:label_id => 1,:price => 3000,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "CD６",:label_id => 2,:price => 3500,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)
Product.create(:title => "商品７",:label_id => 1,:price => 4000,:image => "no_image.jpg",:release_date =>20180916,:stock_count => 30)

Disc.create(:product_id => 1)
Disc.create(:product_id => 2)
Disc.create(:product_id => 3)
Disc.create(:product_id => 3)
Disc.create(:product_id => 4)
Disc.create(:product_id => 4)
Disc.create(:product_id => 4)
Disc.create(:product_id => 5)
Disc.create(:product_id => 6)
Disc.create(:product_id => 7)


Artist.create(:name => "RIP SLYME")
Artist.create(:name => "大塚愛")
Artist.create(:name => "WANIMA")
Artist.create(:name => "miwa")
Artist.create(:name => "ビートルズ")

Genre.create(:name => "J-pop")
Genre.create(:name => "RAP")
Genre.create(:name => "ROCK")

Tune.create(:title => "曲1", :artist_id => 1, :genre_id => 1, :disc_id => 1, :track_number => 1 )
Tune.create(:title => "曲2", :artist_id => 1, :genre_id => 1, :disc_id => 1, :track_number => 2 )
Tune.create(:title => "曲3", :artist_id => 1, :genre_id => 1, :disc_id => 1, :track_number => 3 )
Tune.create(:title => "曲4", :artist_id => 1, :genre_id => 1, :disc_id => 2, :track_number => 1 )
Tune.create(:title => "曲5", :artist_id => 1, :genre_id => 2, :disc_id => 2, :track_number => 2 )
Tune.create(:title => "曲6", :artist_id => 2, :genre_id => 2, :disc_id => 3, :track_number => 1 )
Tune.create(:title => "曲7", :artist_id => 2, :genre_id => 2, :disc_id => 3, :track_number => 2 )
Tune.create(:title => "曲8", :artist_id => 2, :genre_id => 2, :disc_id => 3, :track_number => 3 )
Tune.create(:title => "曲9", :artist_id => 2, :genre_id => 2, :disc_id => 3, :track_number => 4 )
Tune.create(:title => "曲10", :artist_id => 2, :genre_id => 1, :disc_id => 4, :track_number => 1 )
Tune.create(:title => "曲11", :artist_id => 2, :genre_id => 1, :disc_id => 4, :track_number => 2 )
Tune.create(:title => "曲12", :artist_id => 2, :genre_id => 1, :disc_id => 4, :track_number => 3 )
Tune.create(:title => "曲13", :artist_id => 1, :genre_id => 1, :disc_id => 5, :track_number => 1 )
Tune.create(:title => "曲14", :artist_id => 3, :genre_id => 1, :disc_id => 5, :track_number => 2 )
Tune.create(:title => "曲15", :artist_id => 3, :genre_id => 1, :disc_id => 5, :track_number => 3 )
Tune.create(:title => "曲16", :artist_id => 4, :genre_id => 3, :disc_id => 6, :track_number => 1 )
Tune.create(:title => "曲17", :artist_id => 5, :genre_id => 3, :disc_id => 6, :track_number => 2 )
Tune.create(:title => "曲18", :artist_id => 1, :genre_id => 3, :disc_id => 7, :track_number => 1 )
Tune.create(:title => "曲19", :artist_id => 1, :genre_id => 3, :disc_id => 7, :track_number => 2 )
Tune.create(:title => "曲20", :artist_id => 1, :genre_id => 1, :disc_id => 8, :track_number => 1 )
Tune.create(:title => "曲21", :artist_id => 2, :genre_id => 1, :disc_id => 8, :track_number => 2 )
Tune.create(:title => "曲22", :artist_id => 3, :genre_id => 1, :disc_id => 8, :track_number => 3 )
Tune.create(:title => "曲23", :artist_id => 4, :genre_id => 1, :disc_id => 8, :track_number => 4 )
Tune.create(:title => "曲24", :artist_id => 1, :genre_id => 1, :disc_id => 9, :track_number => 1 )
Tune.create(:title => "曲25", :artist_id => 5, :genre_id => 1, :disc_id => 9, :track_number => 2 )
Tune.create(:title => "曲26", :artist_id => 5, :genre_id => 1, :disc_id => 9, :track_number => 3 )
