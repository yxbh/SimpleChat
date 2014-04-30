class SayController < ApplicationController
	# This method demonstrates query string parameters.
	#   e.g. "http://127.0.0.1:3000/say/hello?hi=hi&room_id=0&user_id=0"
	def hello
		if params[:hi] === "hi"
			@said_hi = true;
		else
			@said_hi = false;
		end
		@has_user_id = @has_room_id = false;
		if params.has_key?(:room_id)
			@room_id = params[:room_id];
			@has_room_id = true;
		end
		if params.has_key?(:user_id)
			@user_id = params[:user_id];
			@has_user_id = true;
		end

	end
end
