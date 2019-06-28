Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'welcome/index'
  
  resources :mcqquestions

  resources :tests
  get 'tests/new'
  get 'tests/show'
  get 'tests/index'
  get 'mcqquestions/a'
  

  root 'welcome#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'marks', to: 'mcqquestions#marks',as: 'marks' 
  post 'mcqquestions/submit_answer', to: 'mcqquestions#submit_answer', as: 'submit_answer'
end
