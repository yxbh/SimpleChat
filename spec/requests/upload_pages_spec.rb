require 'spec_helper'

describe "Upload pages" do

  subject { page }

  describe "Upload", :js => true do
    gotoChatPage()
    file_path = Rails.root.join('spec', 'fixtures', 'files', 'test-upload.txt').to_s.gsub('/', '\\')

    before do
      attach_file "file", file_path
      click_button "Upload"
    end
	
    sleep(1)
    it { should have_content('Download') }
  end
end