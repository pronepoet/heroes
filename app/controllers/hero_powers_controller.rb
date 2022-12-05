class HeroPowersController < ApplicationController
    def create
    heropower = HeroPower.create!(hero_power_params)
    render json: heropower.hero

    end

    private
    def hero_power_params
    params.permit(:strength, :power_id, :hero_id)
    end
end
