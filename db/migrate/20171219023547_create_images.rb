class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :article, index: true, foreign_key: true
      t.integer :resource_id
      t.integer :resource_type
      t.binary :image

      t.timestamps
    end
  end
end
