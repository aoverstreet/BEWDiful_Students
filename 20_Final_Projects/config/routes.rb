FinalProject::Application.routes.draw do
	#resources :profiles
 
 	devise_for :users
 	
 	resources :users, only: [:show, :edit, :update]
 	
	root 'entries#index'
	
	resources :entries 
	
	get 'emailresponse/:id(.:format)' => 'entries#deliver_email', :as => 'email_response'
	
	get 'search', to: 'entries#search'
	
	
end
