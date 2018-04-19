class EventsController < ApplicationController

	before_action :authenticate_user!
	before_action :find_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.all
	end

	def show 
    	@event = Event.find(params[:id])  
  	end

	def new
		@event = current_user.events.build
	end

	def create
		@event = current_user.events.build(event_params)

		if @event.save
			redirect_to events_path
		else
			render 'new'
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		if @event.update(event_params)
			redirect_to events_path
		else
			render 'edit'
		end
	end

	def destroy
		@event.destroy
		redirect_to events_path
	end

	private

	def find_event
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit(:date, :time, :location, :theme, :host_user_id)
	end

end
