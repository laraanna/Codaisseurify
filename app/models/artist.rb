class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true, length: { maximum: 500 }
  validates :genre, presence: true
end
