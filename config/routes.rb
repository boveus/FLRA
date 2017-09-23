Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'main#index', as: 'index'

get '/reminder', to: 'main#reminder', as: 'safety_reminder'

get '/dashboard', to: 'main#dashboard', as: 'dashboard'

get '/dashboard/time_of_day', to: 'main#time_of_day', as: 'time_of_day'
get '/dashboard/reports_by_task', to: 'main#reports_by_task', as: 'reports_by_task'

resources :safety_reports
end
