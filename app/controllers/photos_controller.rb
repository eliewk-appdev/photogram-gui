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

    
    @input_photo_id=d.id
  redirect_to "/photos/"+d.id.to_s
  end 

  def create_comment
    g=Comment.new
    g.photo_id=params.fetch("input_photo_id")
    g.author_id=params.fetch("input_author_id")
    g.body=params.fetch("input_body")
    g.save

    
    @input_photo_id=g.photo_id
  redirect_to "/photos/"+g.photo_id.to_s
  end 
end