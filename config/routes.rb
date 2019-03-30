Rails.application.routes.draw do
  root 'catering_estabilishments#index'
  devise_for :users
  
  get 'catering_estabilishments/new'
  get 'catering_estabilishments/edit'
  
  
end
