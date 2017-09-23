Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'main#index', as: 'index'

get '/reminder', to: 'main#reminder', as: 'safety_reminder'

resources :safety_reports
end
