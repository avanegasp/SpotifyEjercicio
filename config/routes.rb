Rails.application.routes.draw do

  get '/artists', to: "artists#index"
  get '/artists/:id', to:"artists#show", as: "artist"
  delete '/artists/:id', to:"artists#destroy", as:"delete_artist"
end
