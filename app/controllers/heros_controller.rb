class HerosController < ApplicationController

    def index
        heros = Hero.all
        render json: heros, only: [:id, :name, :super_name]
    end

    def show
        hero = Hero.find_by(id: params[:id])
        if hero 
            render json: hero, only: [:id, :name, :super_name], include: {powers: {only: [:id, :name, :description]} }
        else
            render json: {error: "Hero not found"}, status: 404
        end
    end

end
