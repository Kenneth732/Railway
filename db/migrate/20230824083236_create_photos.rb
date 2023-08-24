class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.string :title
      t.integer :year
      t.integer :length
      t.string :director
      t.text :description
      t.string :category
      t.boolean :discount
      t.boolean :female_director
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
