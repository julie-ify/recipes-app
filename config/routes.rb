Rails.application.routes.draw do
  devise_for :users
  get 'inventory_foods/index'
  get 'inventories/index'
  get 'recipes/index'
  get 'recipe_foods/index'
  get 'foods/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'foods#index'
end
