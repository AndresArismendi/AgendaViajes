Rails.application.routes.draw do  
  
  
  resources :trips
  resources :guide_trips
  resources :passenger_trips
  resources :trip_types
  resources :passengers
  devise_for :sessions, controllers: {
                   sessions: 'sessions/sessions', 
                   registrations: 'sessions/registrations'}

  #resources :sessions,  :only => [ :index, :new, :edit, :create, :update ]
  get '/sessions/:id/edit' => 'sessions#edit', :as => 'editar_session'
  get 'editar/index' => 'editar#index'

  get 'editar/show', :as => 'show'

  root 'welcome#index' 
  
  devise_for :models
  get '/' => 'welcome#index'
  get 'welcome/index' => 'welcome#index', :as => 'welcome_index'
  get 'welcome/contact' => 'welcome#contact'
  get 'editar/index', :as => 'editar'

  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
