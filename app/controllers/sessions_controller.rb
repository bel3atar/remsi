class SessionsController < ApplicationController
  def create
  	# raise request.env['omniauth.auth']
  	user = User.from_omniauth(request.env['omniauth.auth'])
  	session[:user_id] = user.uid
    user.init
    if user.has_valid_emsi_account?
      # render text: 'ok'
      redirect_to user
    else
      # render text: 'nok'
      redirect_to edit_user_path user
    end
  # 	auth_hash = request.env['omniauth.auth']
 
  # render :text => auth_hash[:info].name
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
end
