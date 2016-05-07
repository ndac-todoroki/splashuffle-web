class AddIndexToAll < ActiveRecord::Migration[5.0]
  def change
    add_index :weapons, :name_ja, :unique => true
    add_index :weapons, :name_en, :unique => true

    add_index :headgear, :name_ja, :unique => true
    add_index :headgear, :name_en, :unique => true

    add_index :clothing, :name_ja, :unique => true
    add_index :clothing, :name_en, :unique => true

    add_index :shoes, :name_ja, :unique => true
    add_index :shoes, :name_en, :unique => true

    add_index :rules, :name_ja, :unique => true
    add_index :rules, :name_en, :unique => true

    add_index :stages, :name_ja, :unique => true
    add_index :stages, :name_en, :unique => true

    add_index :tags, :name_ja, :unique => true
    add_index :tags, :name_en, :unique => true
  end
end
