a = "アーティスト"
b = 0
100.times {
    c = b.to_s
    b += 1
  Artist.seed do |s|
    s.name = a + c
  end
}
