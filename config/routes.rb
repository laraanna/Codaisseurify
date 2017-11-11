Rails.application.routes.draw do
  root "artists#index"

  #get "artists" => "artists#index"
  #get "artists/:id" => "artists#show", as: :artist

  #get "artists/:id/songs/new" => "songs#new"

resources :artists do
  resources :songs
end

end
