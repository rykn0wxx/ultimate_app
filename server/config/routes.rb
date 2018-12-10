Rails.application.routes.draw do

  devise_for :users
  
  scope :as => :main do
    get 'index' => 'page#index', :as => 'index'
    get 'theme' => 'page#theme', :as => 'theme'
    get 'layout' => 'page#layout', :as => 'layout'
  end
  root :to => 'page#index'
end
