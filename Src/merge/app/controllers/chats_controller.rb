class ChatsController < ApplicationController
  extend SessionsHelper
  before_filter :login_required, :only => :room

  @@cur_room_id = 0
  
  def login_required
    redirect_to root_path if self.current_user.blank?
  end

  def room
    # expose user name.
    @username = self.current_user.name

    # check if room_id given
    if params.has_key?(:key)
        @room_id = params[:key]
    else
        # create room
        # @@cur_room_id = @@cur_room_id + 1
        # @room_id = @@cur_room_id

        puts "no room key provided, redirecting to home page."
        redirect_to root_path
    end
    
  end

  def create
    @@cur_room_id = @@cur_room_id + 1

    redirect_to room_path :key => @@cur_room_id
  end
end
