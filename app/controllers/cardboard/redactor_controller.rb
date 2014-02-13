require_dependency "cardboard/application_controller"

module Cardboard
  class RedactorController < ApplicationController

    def upload_image
      asset = Redactor::Image.create(file: params[:file])
      render json: { filelink: asset.file.url, filename: asset.file.name}
    end

    def upload_file
      asset = Redactor::Document.create(file: params[:file])
      render json: { filelink: asset.file.url, filename: asset.file.name}
    end

    def images
      render json: Redactor::Image.all.map { |asset| { thumb: asset.file.thumb("200x200").url, image: asset.file.url, title: asset.file.name } }
    end

    # .require(:assets).permit(:file, :file_url, :retained_file, :remove_file)
  end
end
