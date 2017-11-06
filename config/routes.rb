Rails.application.routes.draw do  
  
  devise_for :sessions
  #resources :sessions,  :only => [ :index, :new, :edit, :create, :update ]
  get '/sessions/:id/edit' => 'sessions#edit', :as => 'editar_session'
  get 'editar/index'

  get 'editar/show'

  root 'welcome#index' 
  
  devise_for :models
  get '/' => 'welcome#index'
  get 'welcome/index' => 'welcome#index', :as => 'welcome_index'
  get 'welcome/contact'      
  get 'editar/index', :as => 'editar'
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
