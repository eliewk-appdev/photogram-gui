class UsersController < ApplicationController
  def userpage
    render ({ :template => "templates/users.html.erb"})
  end 
end