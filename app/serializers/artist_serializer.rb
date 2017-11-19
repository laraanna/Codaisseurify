class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :bio

  has_many :songs, dependent: :destroy
end
