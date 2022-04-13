Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get  '/signup',  to: 'users#new' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/index', to: 'users#index'
  post '/signup',  to: 'users#create'
 
  get  '/micropost',  to: 'microposts#new'
  post  '/micropost',  to: 'microposts#create'
  resources :users do
    member do
    end
  end

  
end
