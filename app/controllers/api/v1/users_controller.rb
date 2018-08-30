module Api::V1
  class UsersController < ApplicationController
    # GET /users
    def index
    end

    # GET /users/:id
    def show
      render json: current_user.as_json(only: %i(id email name))
    end
  end
end
