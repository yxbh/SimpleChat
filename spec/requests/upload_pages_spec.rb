require 'spec_helper'
require 'rbconfig'

describe "Upload pages" do

  subject { page }

  describe "Upload", :js => true do
    gotoChatPage()
    host_os = RbConfig::CONFIG['host_os']
    file_path = Rails.root.join('spec', 'fixtures', 'files', 'test-upload.txt')
    
    # replace POXIS style file path slashes to Windows type.
    if (host_os == /mswin|msys|mingw|cygwin|bccwin|wince|emc/)
		file_path = file_path.to_s.gsub('/', '\\')
	end

    before do
      attach_file "file", file_path
      click_button "Upload"
    end
	
    sleep(1)
    it { should have_content('Download') }
  end
end
