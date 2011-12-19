class PicturesController < ApplicationController
def create
  @upicture = Picture.create( params[:picture] )
end
end
