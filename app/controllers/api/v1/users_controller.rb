module Api::V1
  class UsersController < ApplicationController
    # GET /users
    def index
    end

    # GET /users/:id
    def show
      @user = User.find(params[:id])
      render json: @user.to_json(:include => { :gym => { include: :exercises }})
    end
  end
end
