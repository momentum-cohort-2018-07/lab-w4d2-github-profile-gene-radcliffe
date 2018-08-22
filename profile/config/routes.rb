Rails.application.routes.draw do
  get 'profile/index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'profile#index'
end