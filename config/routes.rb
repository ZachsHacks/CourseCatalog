Rails.application.routes.draw do

	get 'courses/' , to: "courses#index"

  get 'subjects/' , to: "subjects#index"

  get 'instructors/' , to: "instructors#index"


  resources :users

	root "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
