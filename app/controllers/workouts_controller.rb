class WorkoutsController < ApplicationController
	before_action :require_user, only: [:index]
	def index 
 		@workouts = Workout.all 
	end

	def new
		@workout = Workout.new
	end

	def show 
	  @workout = Workout.find(params[:id]) 
	  # @exercises = @workout.exercises 
	end


	def create 
	  @workout = Workout.new(workout_params) 
	  if @workout.save 
	    redirect_to '/workout' 
	  else 
	    render 'new' 
	  end 
	end

	def edit 
 	 @workout = Workout.find(params[:id]) 
	end

	def update 
	  @workout = Workout.find(params[:id]) 
	  if @workout.update_attributes(workout_params) 
	    redirect_to(:action => 'show', :id => @workout.id) 
	  else 
	    render 'edit' 
	  end 
	end

	private 
	  def workout_params
	    params.require(:workout).permit(:content) 
	  end


end
