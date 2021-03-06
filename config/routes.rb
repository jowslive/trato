Rails.application.routes.draw do
  # Rotas do Devise
  devise_for :users, controllers: { registrations: 'registrations' }
  # Rotas de Jobs e Enrollments
  resources :jobs, only: [:create, :edit, :index, :new, :show, :update] do
    collection do 
      get "my"
      get "my_applications"
    end
    resources :enrollments, only: [:create]
  end
  resources :enrollments, only: [:destroy]
  # Pagina Inicial
  root to: 'pages#home'
end
