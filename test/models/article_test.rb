# == Schema Information
#
# Table name: articles
#
#  id              :integer          not null, primary key
#  user_article_id :integer
#  article         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
