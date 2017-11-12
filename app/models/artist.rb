class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true, length: { maximum: 500 }
  validates :genre, presence: true

  scope :order_name_asc, -> { order(:name) }
  scope :order_name_desc, -> { order(name: :desc) }
end
