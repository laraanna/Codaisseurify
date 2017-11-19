class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :year_of_release

  belongs_to :artist
end
