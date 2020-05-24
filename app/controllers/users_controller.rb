class UsersController < ApplicationController
  def user_all
    render ({ :template => "templates/users.html.erb"})
    
  end 
  def user_page
    @input_user_name= params.fetch("input_user_name")
    render ({ :template => "templates/userpage.html.erb"})
  end 
end