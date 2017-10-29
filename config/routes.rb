Rails.application.routes.draw do  
  
  devise_for :sessions
  devise_for :models
  get 'welcome/index' => 'welcome#index', :as => 'welcome_index'
  get 'welcome/contact'
  root 'welcome#index'
  get '/categories/index' => 'old_urls#home'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
