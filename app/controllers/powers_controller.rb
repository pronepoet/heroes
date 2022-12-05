class PowersController < ApplicationController
    
    def index
    powers = Power.all
    render json: powers
    end
    
    def show
    power = find_power
    if power
        render json: power
    else
    render_json
    end
    
    end

    def update
    power = find_power
    if power
        power.update!(power_params)
        render json: power
    else
        render_json
    end
    end

    private
    def render_json
        render json: {error: "Power not found"}, status: :not_found
    end
    def find_power
        Power.find_by(id: params[:id])
    end

    def power_params
    params.permit(:name, :description)
    end

end
