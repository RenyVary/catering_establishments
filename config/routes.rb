Rails.application.routes.draw do
  root 'catering_estabilishments#index'
  devise_for :users
  resources :catering_estabilishments do
    resources :comments, module: :catering_estabilishments
  end
  
  get 'categories/new'
  post 'categories/create'
  get 'categories/index'  
end
