Rails.application.routes.draw do
  # resources :allergens
  # resources :recipe_ingredients
  resources :recipes, only: [:index, :new, :create, :show]
  resources :ingredients, only: [:index, :show]
  resources :users, only: [:index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
