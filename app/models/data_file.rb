class DataFile < ActiveRecord::Base
  def self.save(upload)
    file      = upload['datafile']
    full_path = file.original_filename
    filename  = File.basename(full_path)
    directory = "public/data"
    
    # create data dir if not exists already.
    Dir.mkdir directory unless File.exists?(directory)
    
    # create the file path
    path = File.join(directory, filename)

    # write the file
    File.open(path, 'wb') { |f| f.write(file.read) }
  end
end
