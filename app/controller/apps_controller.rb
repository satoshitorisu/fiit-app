class AppsController < ApplicationController
  def index
  	if trainer_signed_in?
	  	@users = User.where(trainer_id: current_trainer.id)

	  	if user_signed_in?
			session.destroy
	  	end

	elsif user_signed_in?
	else
	end
  end
end
