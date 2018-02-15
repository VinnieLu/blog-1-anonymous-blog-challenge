class Entry < ApplicationRecord
  validates :title, uniqueness: true

  has_many :tag, through: :entry_tag
end
