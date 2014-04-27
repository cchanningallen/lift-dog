LiftDog::Application.routes.draw do
  devise_for :users
  resources :exercises

  root 'exercises#index'
end
