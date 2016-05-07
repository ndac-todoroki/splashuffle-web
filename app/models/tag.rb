class Tag < ApplicationRecord
  ## Relationship
  # N-M with Headgear
  has_and_belongs_to_many :headgear

  # N-M with Clothing
  has_and_belongs_to_many :clothing

  # N-M with Shoes
  has_and_belongs_to_many :shoes

  # N-M with Weapons
  has_many :tags_weapons
  has_many :weapons, through: :tags_weapons
end
