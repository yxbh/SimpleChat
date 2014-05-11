class ChatsController < ApplicationController
  extend SessionsHelper
  before_filter :login_required, :only => :room

  @@rooms
  @@cur_room_id = 0
  
  def login_required
    redirect_to root_path if self.current_user.blank?
  end

  def room
    # check for authentication 
    ## implementation

    @username = self.current_user.name
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
    # check for user authentication
    ## implementation.
    
    redirect_to room;
  end
end
