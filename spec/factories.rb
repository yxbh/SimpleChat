FactoryGirl.define do
  factory :user do
    name							"John Smith"
    email							"js01@example.com"
    password						"foobar"
    password_confirmation	"foobar"
  end
end