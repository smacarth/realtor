class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.references :house
      t.attachment :image

      t.timestamps null: false
    end
  end
end
