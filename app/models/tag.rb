class Tag < ApplicationRecord
  has_many :entry, through: :entry_tag
end
