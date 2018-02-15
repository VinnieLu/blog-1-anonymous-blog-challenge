class EntryTag < ApplicationRecord
  validates :entry, { presence: true }
  validates :tag, { presence: true }
end
