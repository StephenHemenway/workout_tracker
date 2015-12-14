class BackworkoutsController < ApplicationController
	before_action :require_user, only: [:index]
	def index 
 		@backworkouts = Backworkout.all 
	end

	def new
		@backworkout = Backworkout.new
	end

	def show 
	  @backworkout = Backworkout.find(params[:id]) 
	  # @exercises = @workout.exercises 
	end


	def create 
	  @backworkout = Backworkout.new(backworkout_params) 
	  if @backworkout.save 
	    redirect_to '/backworkout' 
	  else 
	    render 'new' 
	  end 
	end

	def edit 
 	 @backworkout = Backworkout.find(params[:id]) 
	end

	def update 
	  @backworkout = Backworkout.find(params[:id]) 
	  if @backworkout.update(backworkout_params) 
	    redirect_to @backworkout
	  else 
	    render 'edit' 
	  end 
	end

	private 
	  def backworkout_params
	    params.require(:backworkout).permit(:content) 
	  end
end
