Rails.application.routes.draw do
  get '/result', to: 'questions#result', as: :result
  resources :questions do
    resources :choices, only: [:create, :edit, :update, :destroy]
    post :answer, on: :member
  end
  resources :scores, only: [:index, :show]
end
