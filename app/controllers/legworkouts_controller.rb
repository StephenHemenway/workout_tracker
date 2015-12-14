class LegworkoutsController < ApplicationController
	before_action :require_user, only: [:index]
	def index 
 		@legworkouts = Legworkout.all 
	end

	def new
		@legworkout = Legworkout.new
	end

	def show 
	  @legworkout = Legworkout.find(params[:id]) 
	  # @exercises = @workout.exercises 
	end


	def create 
	  @legworkout = Legworkout.new(legworkout_params) 
	  if @legworkout.save 
	    redirect_to '/legworkout' 
	  else 
	    render 'new' 
	  end 
	end

	def edit 
 	 @legworkout = Legworkout.find(params[:id]) 
	end

	def update 
	  @legworkout = Legworkout.find(params[:id]) 
	  if @legworkout.update(legworkout_params) 
	    redirect_to @legworkout
	  else 
	    render 'edit' 
	  end 
	end

	private 
	  def legworkout_params
	    params.require(:legworkout).permit(:content) 
	  end
end
