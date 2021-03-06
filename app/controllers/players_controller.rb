class PlayersController < ApplicationController

    def index
        all_players = Player.all.sort_by{|p| p.wins.count}.reverse
        render json: all_players
    end

    def create
        player = Player.create(name: params[:name], image_url: params[:image_url])
        render json: player
    end


end
