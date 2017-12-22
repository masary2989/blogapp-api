# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  article_id    :integer
#  resource_id   :integer
#  resource_type :integer
#  image         :binary(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
