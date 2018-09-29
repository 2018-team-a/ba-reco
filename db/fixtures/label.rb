a = "レーベル"
b = 0
100.times {
    c = b.to_s
    b += 1
  Label.seed do |s|
    s.name = a + c
  end
}
