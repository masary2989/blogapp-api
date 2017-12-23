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

class UserArticle < ApplicationRecord
  has_many :articles#, :through => :user_articles, :source => <name>
  belongs_to :user
end
