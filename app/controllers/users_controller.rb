class UsersController < ApplicationController
  def userpage
    @user_array=User.all
    render ({ :template => "templates/users.html.erb"})
  end 
end