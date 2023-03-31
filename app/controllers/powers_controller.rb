class PowersController < ApplicationController

    def index
        powers = Power.all
        render json: powers, only: [:id, :name, :description]
    end

    def show
        power = Power.find_by(id: params[:id])
        if power 
            render json: power, only: [:id, :name, :description]
        else
            render json: {error: "Power not found"}, status: 404
        end
    end

    def update
        power = Power.find_by(id: params[:id])
        if power 
            power.update(power_params)
            render json: power, only: [:id, :name, :description]
        else
            render json: {error: "Power not found"}, status: 404
        end
    end

    private

    def power_params
        params.require(:power).permit(:name, :description)
    end

end
