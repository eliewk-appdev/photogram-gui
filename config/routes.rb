Rails.application.routes.draw do

get("/users", { :controller => "users", :action =>"userpage"})

end
