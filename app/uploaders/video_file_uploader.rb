# encoding: utf-8

class VideoFileUploader < CarrierWave::Uploader::Base
  include CarrierWave::Video
  include CarrierWave::Backgrounder::Delay

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  version :mp4 do
    process encode_video: [:mp4]
    def full_filename(for_file=file)
      (super.chomp(File.extname(super)) + '.mp4').to_ascii
    end
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w[mp4 m4v avi mpg flv mov 3gp mpeg 3gpp asx asf wmv ogg 3g2 264 3gp2 3gpp2
      3mm 3p2 ajp amv amx arf rm swf vob rmvb mkv mpe m1s mp2v m2v m2s qt ts video]
  end
end
