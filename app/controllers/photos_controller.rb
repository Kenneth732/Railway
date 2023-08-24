

class PhotosController < ApplicationController
    before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
    def index
        photos = Photo.all
        render json: photos
    end
  
    def show
        @photo = Photo.find(params[:id])
        render json: photo
    end
  
    def new
      @photo = Photo.new
    end
  
    def create
      @photo = current_user.photos.build(photo_params)
      if @photo.save
        redirect_to @photo, notice: 'Photo was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @photo.update(photo_params)
        redirect_to @photo, notice: 'Photo was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @photo.destroy
      redirect_to photos_url, notice: 'Photo was successfully destroyed.'
    end
  
    private
  
    def set_photo
      @photo = Photo.find(params[:id])
    end
  
    def photo_params
      params.require(:photo).permit(:image_url, :title, :year, :length, :director, :description, :category, :discount, :female_director)
    end
end
  

