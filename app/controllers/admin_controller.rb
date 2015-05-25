class AdminController < ApplicationController
  def index
  end

  def login
	if params['user'] == 'kvm' && params['password'] == 'glück' then
		session[:user] = 'kvm'
	else
		session[:user] = nil
	end
	redirect_to controller: :admin, action: :index 
  end

end
