class UsersController < ApplicationController

	def male
		# @users = User.find(:all, :conditions => ['gender=?',"male"])
		@users = Task.find_all_by_gender("male") #dynamic find_all_by_field
	end

	def last_male
		# @user = User.find(:first, :conditions => ['gender=?', "male"], :order => 'created_at DESC')
		@user = Task.find_by_gender("male", :order => "created_at DESC") #dynamic_find_by_field
	end
end
