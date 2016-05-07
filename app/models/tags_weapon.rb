class TagsWeapon < ApplicationRecord
  belongs_to :tag
  belongs_to :weapon
end
