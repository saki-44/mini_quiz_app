Rails.application.routes.draw do
  get 'answers/create'
  resources :questions do
    resources :choices, only: [:create, :edit, :update, :destroy]
    resources :answers, only: [:create]
  end
  resources :scores, only: [:index, :show]
end
