class CreateShoesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes_tags, id: false do |t|
      t.references :shoe, index: true, foreign_key: true, null: false
      t.references :tag, index: true, foreign_key: true, null: false
    end
  end
end
