Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users
  post '/tasks/:id/done', to: 'tasks#done', as: 'done_task'
  post '/tasks/:id/to_do', to: 'tasks#to_do', as: 'to_do_task'
  post '/tasks/:id/play_pause', to: 'tasks#play_pause', as: 'play_pause'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
end
