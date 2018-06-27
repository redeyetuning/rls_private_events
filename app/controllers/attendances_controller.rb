class AttendancesController < ApplicationController
	def create
		attendance = current_user.attendances.build(event_id: params[:event_id] )
		if attendance.save 
			redirect_to user_path(current_user)
		else
			redirect_to events_path
		end
	end
end
