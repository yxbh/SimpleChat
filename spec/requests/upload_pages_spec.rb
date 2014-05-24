require 'spec_helper'

describe "Upload pages" do

  subject { page }

  describe "Upload", :js => true do
    gotoChatPage()
    file_path = Rails.root + "spec/fixtures/files/test-upload.txt"

    before do
      attach_file "file", file_path
      click_button "Upload"
    end

    it { should have_content('Download') }
  end
end