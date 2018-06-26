class EventsController < ApplicationController
  def new
  	@event = Event.new
  end

  def create
  	if logged_in?
  		event = current_user.events.new(event_params)
  		if event.save
  			redirect_to events_path
  		else
  			render 'new'
  		end
  	else
  		redirect_to login_path
  	end
  end

  def show
  	@event = Event.find(params[:id])
  end

	def index	
		@events = Event.all
	end

  private

  def event_params
  	params.require(:event).permit(:title, :location, :date)
  end
end
