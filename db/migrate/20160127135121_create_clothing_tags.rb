class CreateClothingTags < ActiveRecord::Migration[5.0]
  def change
    create_table :clothing_tags, id: false do |t|
      t.references :clothing, index: true, foreign_key: true, null: false
      t.references :tag, index: true, foreign_key: true, null: false
    end
  end
end
