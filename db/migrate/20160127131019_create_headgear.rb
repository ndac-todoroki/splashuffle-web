class CreateHeadgear < ActiveRecord::Migration[5.0]
  def change
    create_table :headgear do |t|
      t.string :name_ja
      t.string :name_en
      t.string :image_path
      t.string :image_url

      t.timestamps
    end
  end
end
