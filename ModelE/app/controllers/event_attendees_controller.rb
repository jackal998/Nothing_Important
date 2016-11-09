class EventAttendeesController < ApplicationController

	before_action :find_event

	def index
		byebug
		@attendees = @event.attendees
	end
	def new
		@attendee =  @event.attendees.new
	end
	def create
		@attendee =  @event.attendees.new(attendee_params)
		if @attendee.save
			flash[:notice] = "新增成功"
			redirect_to :action => :index
		else
			render :action => :new
		end
	end
	def show
		
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end

	private
	def attendee_params
		params.require(:attendee).permit(:name)
	end

	def find_event
		@event = Event.find(params[:event_id])
	end
end
