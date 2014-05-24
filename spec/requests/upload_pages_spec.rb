require 'spec_helper'

describe "Upload pages" do

  subject { page }

  describe "Upload", :js => true do
    gotoChatPage()

    before do
      fill_in "upload[datafile]", with: "illegal path"
      click_button "Upload"
    end

    it { should have_content('Download') }
  end
end