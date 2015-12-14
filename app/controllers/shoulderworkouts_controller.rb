class ShoulderworkoutsController < ApplicationController
before_action :require_user, only: [:index]
	def index 
 		@shoulderworkouts = Shoulderworkout.all 
	end

	def new
		@shoulderworkout = Shoulderworkout.new
	end

	def show 
	  @shoulderworkout = Shoulderworkout.find(params[:id]) 
	  # @exercises = @workout.exercises 
	end


	def create 
	  @shoulderworkout = Shoulderworkout.new(shoulderworkout_params) 
	  if @shoulderworkout.save 
	    redirect_to '/shoulderworkout' 
	  else 
	    render 'new' 
	  end 
	end

	def edit 
 	 @shoulderworkout = Shoulderworkout.find(params[:id]) 
	end

	def update 
	  @shoulderworkout = Shoulderworkout.find(params[:id]) 
	  if @shoulderworkout.update(shoulderworkout_params) 
	    redirect_to @shoulderworkout
	  else 
	    render 'edit' 
	  end 
	end

	private 
	  def shoulderworkout_params
	    params.require(:shoulderworkout).permit(:content) 
	  end
end
