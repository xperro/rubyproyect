Rails.application.routes.draw do
  root 'registros#index'
  resources :registros do
   put :import_csv, action: :import_csv #-> url.com/users/:user_id/allow
end
  namespace :api, defaults: {format: 'json'} do
    resources :registros, only: [:index,:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
