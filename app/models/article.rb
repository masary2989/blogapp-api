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

class Article < ApplicationRecord
  belongs_to :user_article
end
