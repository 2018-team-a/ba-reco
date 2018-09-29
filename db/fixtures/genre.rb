a = "ジャンル"
b = 0
100.times {
    c = b.to_s
    b += 1
  Genre.seed do |s|
    s.name = a + c
  end
}
