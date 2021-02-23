Rails.application.routes.draw do
  # Rotas do Devise
  devise_for :users
  # Rotas de Jobs e Enrollments
  resources :jobs, only: [:create, :edit, :index, :new, :show, :update] do
    resources :enrollments, only: [:create]
  end
  resources :enrollments, only: [:destroy]
  # Pagina Inicial
  root to: 'pages#home'
end
