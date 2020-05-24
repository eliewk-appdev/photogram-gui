class UsersController < ApplicationController
  def user_all
    render ({ :template => "templates/users.html.erb"})
    
  end 

  def user_page
    @input_user_name= params.fetch("input_user_name")
    render ({ :template => "templates/userpage.html.erb"})
  end 

  def photo_page
    @input_photo_id= params.fetch("input_photo_id")
    render ({ :template => "templates/photopage.html.erb"})
  end 
end