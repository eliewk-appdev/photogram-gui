class PhotosController < ApplicationController
  def photo_all
    render ({ :template => "templates/photos.html.erb"})
    
  end 
  def photo_page
    @input_photo_id= params.fetch("input_photo_id")
    render ({ :template => "templates/photopage.html.erb"})
  end 

  def create_row
    d=Photo.new
    d.image=params.fetch("input_image")
    d.caption=params.fetch("input_caption")
    d.owner_id=params.fetch("input_owner_id")


    d.save
    
    render ({ :template => "templates/photos.html.erb"})
  end 
end