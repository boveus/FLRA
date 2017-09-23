Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'welcome/index'

# get '/', to: 'main#index', as: 'index'

resources :safety_reports

root 'welcome#index'
end
