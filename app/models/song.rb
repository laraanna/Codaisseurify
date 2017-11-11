class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, uniqueness: true
  validates :year_of_release, presence: true

end
