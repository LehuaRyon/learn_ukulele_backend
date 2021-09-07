class Genre < ApplicationRecord
    has_many :songs, dependent: :destroy
    # dependent destroy, preserves the integrity of genre model and its data
    # if i ever delete a genre, also deleteing songs, cant have any songs floating aroun din db
end
