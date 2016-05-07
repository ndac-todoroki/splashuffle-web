class Weapon < ApplicationRecord
  ## Relationship
  # N-M with Tags
  has_many :tags_weapons
  has_many :tags, through: :tags_weapons
end
