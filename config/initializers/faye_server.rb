Thread.new do
  system("rackup faye.ru -s thin -E production")
end
