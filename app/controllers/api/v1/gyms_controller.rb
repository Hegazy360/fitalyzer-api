module Api::V1
  class GymsController < ApplicationController
    # GET /users
    def index
    end

    # GET /users/:id
    def show
      @gym = User.find(params[:id]).gym
      render json: @gym.to_json( include: :exercises )
    end
  end
end
