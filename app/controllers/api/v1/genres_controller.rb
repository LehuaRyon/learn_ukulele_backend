class Api::V1::GenresController < ApplicationController

    def index
        genres = Genre.all
        render json: GenreSerializer.new(genres)
    end

    # private

    # def genre_params
    #     params.require(:genre).permit(:name)
    # end
end
