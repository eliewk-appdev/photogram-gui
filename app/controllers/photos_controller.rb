class PhotosController < ApplicationController
 
  def photo_page
    @input_photo_id= params.fetch("input_photo_id")
    render ({ :template => "templates/photopage.html.erb"})
  end 
end