Thread.new do
  system("rackup faye.ru -s thin -p 3053 -E production")
end
