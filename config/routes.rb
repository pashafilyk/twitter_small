Rails.application.routes.draw do
	#root 'root#index'
 	root 'persons#profile'

	 
	get 'persons/profile', as: 'user_root'


	devise_for :users, :controllers => { registrations: 'registrations' }
	resources :posts
	#devise_for :users#, controllers: {
  	#	sessions: 'users/sessions'
  	#}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	#devise_scope :user do
  	#	get 'sign_in', to: 'devise/sessions#new'
	#end
end
