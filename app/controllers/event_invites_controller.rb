class EventInvitesController < ApplicationController
  
  def new
    @event_invite = EventInvite.new
  end


  def create
    @event_invite = EventInvite.new(event_invite_params)
    @event_invite.event_id = params[:event_id]
    @event_invite.save
    redirect_to event_path(@event_invite.event)
  end

  private

    def event_invite_params
      params.require(:event_invite).permit()
    end

end
