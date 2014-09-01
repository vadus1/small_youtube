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

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
