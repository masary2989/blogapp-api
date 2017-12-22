# == Schema Information
#
# Table name: user_articles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
