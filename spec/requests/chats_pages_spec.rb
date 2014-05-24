require 'spec_helper'

describe "Chat page" do

  subject { page }
  
  describe "Chat page without sign in" do
    before { get room_path}
    it { expect(response).to redirect_to(root_path) }
  end
  
  describe "Chat page with sign in" do
    gotoChatPage()
    
    it { should have_title('| Room ') }
    it { should have_content('To invite someone into the chat room') }
    it { should have_content('Upload File') }
    it { should have_link('Sign out') }
    it { should have_content('Participants') }
      
    describe "redirect on visiting directory without room id" do
      before { get room_path }
      it { expect(response).to redirect_to(root_path) }
    end
  end
    
=begin      testing for posting messages
  describe "Post message" do
    gotoChatPage()
    
    before do
      fill_in "message", with: "some words"
      click_button "Send"
    end
    
    it { should have_content('some words') }
  end
=end

end