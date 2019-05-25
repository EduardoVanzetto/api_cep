Rails.application.routes.draw do
  resources :enderecos
  resources :cidades
  resources :estados
  resources :cursos

  get "busca_cep/buscar"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
