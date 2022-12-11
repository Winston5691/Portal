Rails.application.routes.draw do
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope(path: 'api') do
  resources :students
  resources :tutors
  resources :courses
  resources :results
  resources :appointments
  authenticate(:user) do
    resources :users
  end
  
  end

end
