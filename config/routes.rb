Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
  root to: 'restaurants#index'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
