class SayController < ApplicationController

	@@messages = [];

	# This method demonstrates query string parameters.
	#   e.g. "http://127.0.0.1:3000/say/hello?hi=hi&room_id=0&user_id=0"
	def hello
		# existence check for the 'hi' pareaeter.
		if params[:hi] === "hi"
			@said_hi = true;
		else
			@said_hi = false;
		end

		# existence check for room_id and user_id.
		@has_user_id = @has_room_id = false;
		if params.has_key?(:room_id)
			@room_id = params[:room_id];
			@has_room_id = true;
		end
		if params.has_key?(:user_id)
			@user_id = params[:user_id];
			@has_user_id = true;
		end

		# DEMO: JSON
		json_src = "{ \"key\": \"value\", \"type\" : \"test\" }";
		js_obj = JSON.parse(json_src);
		puts "\n";
		puts js_obj["key"];
		puts js_obj["type"];
		puts "\n";

		#
		@messages_copy = @@messages;

		# explicit render call. Rails implicitly calls it anyway.
		render :hello
	end

	def new_msg
		@@messages.push(params["new_message"]);
		#redirect_to :action => 'hello';
	end
end
