Rails.application.routes.draw do
  root 'catering_estabilishments#index'
  devise_for :users
  
  get 'catering_estabilishments/new'
  get 'catering_estabilishments/edit'
  get 'categories/new'
  post 'categories/create'
  post 'catering_estabilishments/create'
  get 'categories/index'
  delete 'catering_estabilishments/:id' => 'catering_estabilishments#destroy', as: 'catering_estabilishment'

  
  
end
