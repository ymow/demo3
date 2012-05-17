class EventsController < ApplicationController
def index
@events = Event.page(params[:page]).per(5)

end

def new
@event = Event.new
end

def create
@event = Event.new(params[:event])
@event.save

redirect_to :action => :index
end

def show
@event = Event.find(params[:id])
@page_title = @event.name
end

def edit
@event = Event.find(params[:id])
end

def update
@event = Event.find(params[:id])
@event.update_attribute(parmas[:event])

redirect_to :action => :show, :id =>@event
end

def destroy
  @event = Event.find(params[:id])
  @event.destroy
  
  redirect_to :action => :index
end


end
