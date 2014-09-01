# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string           not null
#  file        :string
#  file_tmp    :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ActiveRecord::Base
  belongs_to :user, inverse_of: :videos

  mount_uploader :file, VideoFileUploader
  store_in_background :file

  validates :user,  presence: true
  validates :title, presence: true
  validates :file,  presence: true, on: :create

  scope :newest, -> { order('created_at DESC') }
end
