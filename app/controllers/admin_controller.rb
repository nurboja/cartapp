class AdminController < ApplicationController
	before_action :authenticate_user!, :is_admin?
  def dashboard
  end

  def products
  	@products = Product.all
  end

  def categories
  end

  def users
  	@users = User.all
  end

  private
   def is_admin?
   	if current_user.admin != true
   		redirect_to root_path
   		flash[:alert] = "You have to be admin"
   	end
   end

end
