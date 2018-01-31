class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :image
      t.text :description
      t.integer :tag_id

      t.timestamps
    end
  end
end
