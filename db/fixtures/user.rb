a = "aaa@aaa"
b = 0
100.times {
    c = b.to_s
    b += 1
  User.seed do |s|
    s.email = a + c
    s.encrypted_password = "aaaaaa"
    s.name_family_name = "aaaaaa"
    s.name_name = "aaaaaa"
    s.furigana_family_name = "aaaaaa"
    s.furigana_name = "aaaaaa"
    s.postal_code = "111-1111"
    s.address = "aaaaaa"
    s.phone_number = "111-1111-1111"
  end
}
