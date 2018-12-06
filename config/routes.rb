Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  root 'welcome#index'
  resources :books, only: [:index] do
    resources :reviews, only: [:index] do
    end
  end
  resources :users, only: [:show] do
    resources :reviews, only: [:index] do
    end
  end

end
