Cardboard::Engine.routes.draw do

  post "redactor/image", to: "redactor#upload_image"
  post "redactor/file", to: "redactor#upload_file"
  get "redactor/images", to: "redactor#images"

end