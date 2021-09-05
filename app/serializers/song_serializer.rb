class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :artist, :img_url, :link, :genre_id
end
