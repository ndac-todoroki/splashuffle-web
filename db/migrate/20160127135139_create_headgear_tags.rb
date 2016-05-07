class CreateHeadgearTags < ActiveRecord::Migration[5.0]
  def change
    create_table :headgear_tags, id: false do |t|
      t.references :headgear, index: true, foreign_key: true, null: false
      t.references :tag, index: true, foreign_key: true, null: false
    end
  end
end
