Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  # Rotas de Jobs
  resources :jobs, only: [:create, :edit, :index, :new, :show, :update] do
    resources :enrollments, only: [:create, :destroy]
  end
  # Pagina Inicial
  root to: 'pages#home'
end
