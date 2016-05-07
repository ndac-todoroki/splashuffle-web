class CreateTagsWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_weapons do |t|
      t.references :tag, index: true, foreign_key: true, null: false
      t.references :weapon, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
