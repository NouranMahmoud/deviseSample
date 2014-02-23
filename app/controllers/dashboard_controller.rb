class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		#redirect_to :controller => 'dashboard', :action => 'show'
	end
	def show
		#redirect_to :controller => 'item', :action => 'index'
		
	end

end
