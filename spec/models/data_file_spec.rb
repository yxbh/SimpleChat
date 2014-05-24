require 'spec_helper'

describe DataFile do
  before do
      @file = fixture_file_upload("files/test-upload.txt", "text/txt")
  end
=begin
  it "Upload file" do
    post :save, :upload => @file
    response.should be_success
  end
=end
end