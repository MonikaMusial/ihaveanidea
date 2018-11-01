Rails.application.routes.draw do

#  scope :api, defaults: { format: :json } do
 #   devise_for :users, controllers: { sessions: :sessions },
  #                     path_names: { sign_in: :login }
   # resource :user, only: [:show, :update]
  
  devise_for :users
  #resources :users
  resources :ideas
  resources :user_ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  get 'ideas/:id/try', to: 'ideas#try', as: 'try'
  get 'ideas/:id/user_idea', to: 'user_ideas#try', as: 'tryidea'
  get 'my_account', to: 'users#my_account'
end

