class ChatsController < ApplicationController
  extend SessionsHelper

  @@rooms
  @@cur_room_id = 0

  def room
    # check for authenication 
    ## implementation

    @username = self.current_user
    if @username.blank?
      @username = "(!NA!)"
    end

    # check if room_id given
    if params.has_key?(:id)
        @room_id = params[:id]
    else
        # create room
        @@cur_room_id = @@cur_room_id + 1
        @room_id = @@cur_room_id
    end
    
  end

  def create
    # check for user authenication
    ## implementation.
    
    redirect_to :action => 'room';
  end
end
