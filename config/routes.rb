Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :bdaes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#set my home page to pages#home
#pages is the name of the controller and home, is a method in it 
  root to: 'pages#home'
end
