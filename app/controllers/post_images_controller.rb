class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    
    @post_image = PostImage.new
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end


  def index
  end

  def show
  end

  private

  
end

