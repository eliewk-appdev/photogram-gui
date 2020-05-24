class UsersController < ApplicationController
  def user_all
    render ({ :template => "templates/users.html.erb"})
    
  end 

  def user_page
    @input_user_name= params.fetch("input_user_name")
    render ({ :template => "templates/userpage.html.erb"})
  end 

  def create_row
    d=User.new
    d.username=params.fetch("input_username")
    d.save
    @input_user_name=params.fetch("input_username")
  render ({ :template => "templates/userpage.html.erb"})
  end 

end