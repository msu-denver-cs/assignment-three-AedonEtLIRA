Rails.application.routes.draw do
  devise_for :users
  resources :car_parts
  resources :car_manufacturers
  resources :cars, :shallow => true do
    resources :search
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
