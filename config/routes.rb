Rails.application.routes.draw do

get("/", { :controller => "users", :action =>"user_all"})
get("/users", { :controller => "users", :action =>"user_all"})
get("/users/:input_user_name", { :controller => "users", :action =>"user_page"})

get("/insert_user_record", { :controller => "users", :action =>"create_row"})

get("/insert_photo_record", { :controller => "photos", :action =>"create_row"})

get("/insert_comment_record", { :controller => "photos", :action =>"create_comment"})

get("/photos", { :controller => "photos", :action =>"photo_all"})
get("/photos/:input_photo_id", { :controller => "photos", :action =>"photo_page"})
end
