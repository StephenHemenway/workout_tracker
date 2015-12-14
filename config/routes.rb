Rails.application.routes.draw do
  root to: 'visitors#index'

  get 'signup'  => 'users#new' 
	resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get '/workout' => 'workouts#index'
  get '/workouts/new' => 'workouts#new'
  post 'workouts' => 'workouts#create'
  get '/workouts/:id' => 'workouts#show', as: :work
  get '/workouts/:id/edit' => 'workouts#edit', as: :edit_workout
  patch '/workouts/:id' => 'workouts#update'

  get '/chestworkout' => 'chestworkouts#index'
  get '/chestworkouts/new' => 'chestworkouts#new'
  post 'chestworkouts' => 'chestworkouts#create'
  get '/chestworkouts/:id' => 'chestworkouts#show', as: :chestwork
  get '/chestworkouts/:id/edit' => 'chestworkouts#edit', as: :edit_chestworkout
  patch '/chestworkout.:id' => 'chestworkouts#update'

  get '/shoulderworkout' => 'shoulderworkouts#index'
  get '/shoulderworkouts/new' => 'shoulderworkouts#new'
  post 'shoulderworkouts' => 'shoulderworkouts#create'
  get '/shoulderworkouts/:id' => 'shoulderworkouts#show', as: :shoulderwork
  get '/shoulderworkouts/:id/edit' => 'shoulderworkouts#edit', as: :edit_shoulderworkout
  patch '/shoulderworkout.:id' => 'shoulderworkouts#update'

  get '/backworkout' => 'backworkouts#index'
  get '/backworkouts/new' => 'backworkouts#new'
  post 'backworkouts' => 'backworkouts#create'
  get '/backworkouts/:id' => 'backworkouts#show', as: :backwork
  get '/backworkouts/:id/edit' => 'backworkouts#edit', as: :edit_backworkout
  patch '/backworkout.:id' => 'backworkouts#update'

  get '/legworkout' => 'legworkouts#index'
  get '/legworkouts/new' => 'legworkouts#new'
  post 'legworkouts' => 'legworkouts#create'
  get '/legworkouts/:id' => 'legworkouts#show', as: :legwork
  get '/legworkouts/:id/edit' => 'legworkouts#edit', as: :edit_legworkout
  patch '/legworkout.:id' => 'legworkouts#update'
end
