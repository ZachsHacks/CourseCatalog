Rails.application.routes.draw do

  resources :listings
	resources :subjects
	resources :courses
  post 'enrollments/create'

  post 'enrollments/destroy'

  get 'sessions/new'
	get 'courses/' , to: "courses#index"
  get 'subjects/' , to: "subjects#index"
  get 'instructors/' , to: "instructors#index"
	get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

	root "sessions#new"
	get '/search', to: 'courses#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
