module Api::V1
  class ExercisesController < ApplicationController
    # GET /users
    def index
      @exercises = Gym.find(params[:gym_id]).exercises.order("created_at ASC")
      render json: @exercises.to_json( include: :sets )
    end

    def show
      @exercise = Exercise.find(params[:id])
      render json: @exercise
    end

    def create
      @exercise = Exercise.create(exercise_params)
      Gym.find(params[:gym_id]).exercises << @exercise
      @exercise.sets.create(sets_params[:sets])
      render json: @exercise.to_json( include: :sets )
    end

    def update
      @exercise = Exercise.find(params[:id])
      @exercise.update_attributes(exercise_params)
      render json: @exercise.to_json( include: :sets )
    end

    def destroy
      @exercise = Exercise.find(params[:id])
      if @exercise.destroy
        head :no_content, status: :ok
      else
        render json: @exercise.errors, status: :unprocessable_entity
      end
    end

    private
      def exercise_params
        params.require(:exercise).permit(:name, :exercise_id)
      end
      def sets_params
        params.require(:exercise).permit(sets: [:weight, :reps])
      end
  end
end
