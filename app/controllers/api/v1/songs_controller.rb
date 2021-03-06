class Api::V1::SongsController < ApplicationController

    def index
        songs = Song.all
        render json: SongSerializer.new(songs)
    end

    def create
        song = Song.new(song_params)
        if song.save
            render json: SongSerializer.new(song), status: :accepted
        else
            render json: {errors: song.errors.full_messages}, status: :unprocessible_entity

        end
    end

    def destroy
        song = Song.find_by_id(params[:id])
        song.destroy
        render json: {message: "Song '#{song.title}' successfully deleted!"}
    end

    def update
        song = Song.find_by_id(params[:id])
        if song.update(song_params)
            render json: SongSerializer.new(song)
        else
            render json: {error: "Could not update song."}
        end
    end

    private

    def song_params
        params.require(:song).permit(:title, :artist, :img_url, :link, :genre_id)
    end

end
