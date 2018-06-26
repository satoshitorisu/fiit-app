class AppsController < ApplicationController
  def index
  	if trainer_signed_in?
	  	@users = User.where(trainer_id: current_trainer.id)
	  	
	  	#生徒の有無を確認してする
	  	@user_present = false
	  	@user_present = true if User.where(trainer_id: current_trainer.id).present?

	  	#user登録後にuserセッション閉じる
	  	if user_signed_in?
			session.destroy
	  	end


	elsif user_signed_in?
	else

	end
  end
end
