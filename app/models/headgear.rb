class Headgear < ApplicationRecord
  ## Relationship
  # N-M with Tags
  has_and_belongs_to_many :tags
end
