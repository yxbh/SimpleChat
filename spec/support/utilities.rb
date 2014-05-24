def full_title(page_title)
  base_title = "Simple Chat"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def gotoChatPage()
  let(:user) { FactoryGirl.create(:user) }
  before do
    visit signin_path
    fill_in       "Email",    with: user.email.upcase
    fill_in       "Password", with: user.password
    click_button  "Sign In"
    click_link    "Click here to start a new room"
  end
end