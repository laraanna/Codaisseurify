class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :genre, presence: true
end
