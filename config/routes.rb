Rails.application.routes.draw do

get("/users", { :controller => "users", :action =>"user_all"})
get("/users/:input_user_name", { :controller => "users", :action =>"user_page"})
end
