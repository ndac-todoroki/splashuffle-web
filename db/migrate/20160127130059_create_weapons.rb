class CreateWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :weapons do |t|
      t.string :name_ja
      t.string :name_en
      t.string :image_path
      t.string :image_url
      t.integer :range

      t.timestamps
    end
  end
end
