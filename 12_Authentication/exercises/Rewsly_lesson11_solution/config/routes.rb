Rewsly::Application.routes.draw do
  devise_for :users
  root 'stories#index'
  get '/stories/search' => 'stories#search'
  resources :stories
  
end
