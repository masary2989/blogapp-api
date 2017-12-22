class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :user_article, index: true, foreign_key: true
      t.string :article

      t.timestamps
    end
  end
end
