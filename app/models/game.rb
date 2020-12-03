class Game < ApplicationRecord  
  validates :mode, presence: true
  validates :release_date, presence: true
  validates :developer, presence: true

  belongs_to :system_requiriment
  has_one :product, as: :productable
  
  enum mode: { pvp: 1, pve: 2, both: 3 }
end
