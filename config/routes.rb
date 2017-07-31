Puppies::Application.routes.draw do

  get 'contact', to: 'contacts#new', as: 'new_message'
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'login' => :destroy
  end

  resources :users
  resources :orders
  resources :adoptions
  resources :carts
  resources :puppies
  resources :agency, only: [:index]

  resource :contact, only: [:new, :create]

  root "agency#index", :as => 'agency'
end
