class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({ :created_at => :desc })

    render({ :template => "photos/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_photos = Photo.where({ :id => the_id })

    @the_photo = matching_photos.at(0)

    render({ :template => "photos/show" })
  end

  def create
    the_photo = Photo.new
    the_photo.title = params.fetch("query_title")
    the_photo.caption = params.fetch("query_caption")
    the_photo.posted = params.fetch("query_posted")
    the_photo.like_count = params.fetch("query_like_count")
    the_photo.comment_count = params.fetch("query_comment_count")
    the_photo.fans = params.fetch("query_fans")
    the_photo.comments = params.fetch("query_comments")
    the_photo.photo_id = params.fetch("query_photo_id")

    if the_photo.valid?
      the_photo.save
      redirect_to("/photos", { :notice => "Photo created successfully." })
    else
      redirect_to("/photos", { :alert => the_photo.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.title = params.fetch("query_title")
    the_photo.caption = params.fetch("query_caption")
    the_photo.posted = params.fetch("query_posted")
    the_photo.like_count = params.fetch("query_like_count")
    the_photo.comment_count = params.fetch("query_comment_count")
    the_photo.fans = params.fetch("query_fans")
    the_photo.comments = params.fetch("query_comments")
    the_photo.photo_id = params.fetch("query_photo_id")

    if the_photo.valid?
      the_photo.save
      redirect_to("/photos/#{the_photo.id}", { :notice => "Photo updated successfully."} )
    else
      redirect_to("/photos/#{the_photo.id}", { :alert => the_photo.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_photo = Photo.where({ :id => the_id }).at(0)

    the_photo.destroy

    redirect_to("/photos", { :notice => "Photo deleted successfully."} )
  end
end
