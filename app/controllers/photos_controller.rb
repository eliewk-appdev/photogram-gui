class PhotosController < ApplicationController
  def photo_all
    render ({ :template => "templates/photos.html.erb"})
    
  end 
  def photo_page
    @input_photo_id= params.fetch("input_photo_id")
    render ({ :template => "templates/photopage.html.erb"})
  end 
end