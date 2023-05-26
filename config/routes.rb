Rails.application.routes.draw do
  devise_for :users
  root 'blog#index'
 
end
