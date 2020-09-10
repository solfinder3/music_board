Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'

  resources :billboards do
    resources :artists
  end

  resources :artists do
    resources :songs
  end
end