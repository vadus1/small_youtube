# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  video_id   :integer
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :video, inverse_of: :comments
  belongs_to :user, inverse_of: :comments

  validates :video, presence: true
  validates :user, presence: true
  validates :body, presence: true

  scope :newest, -> { order("created_at DESC") }

  def owner?(user)
    user && self.user_id == user.id
  end
end
