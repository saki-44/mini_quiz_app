Rails.application.routes.draw do
  root to: 'questions#top'
  get '/result', to: 'questions#result', as: :result
  get '/correct_answer', to: 'questions#correct_answer', as: :correct_answer
  resources :questions do
    resources :choices, only: [:create, :edit, :update, :destroy]
    post :answer, on: :member
  end
  resources :scores, only: [:index, :show]
end
