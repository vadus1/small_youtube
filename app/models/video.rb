# == Schema Information
#
# Table name: videos
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  title        :string           not null
#  file         :string
#  file_tmp     :string
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  published_at :datetime
#

class Video < ActiveRecord::Base
  belongs_to :user, inverse_of: :videos
  has_many :comments, inverse_of: :video, dependent: :destroy
  
  mount_uploader :file, VideoFileUploader
  store_in_background :file

  validates :user,  presence: true
  validates :title, presence: true
  validates :file,  presence: true, on: :create

  scope :published, -> { where("published_at IS NOT NULL").newest }
  scope :not_published, -> { where("published_at IS NULL").newest }
  scope :newest,    -> { order('created_at DESC') }

  def owner?(user)
    user && self.user_id == user.id
  end

  def is_published?
    published_at
  end
  
  def publish!
    update_attribute(:published_at, DateTime.now)
  end
end
