class CreateUserArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_articles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
