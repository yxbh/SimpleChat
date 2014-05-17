class UploadController < ApplicationController
  def upload
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end
