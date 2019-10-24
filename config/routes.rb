Rails.application.routes.draw do
  resources :inscricaos
  get 'home/index'
  resources :cursos

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
