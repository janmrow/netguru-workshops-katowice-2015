Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers
  resources :visitors
  resources :reports

  get 'report/subjects', to: 'reports#subjects'

  get '/subjects', to: 'reports#subjects'

  root 'visitors#index'
end
