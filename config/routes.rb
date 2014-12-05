Rails.application.routes.draw do

  root 'home#index'

  get 'photos' => 'photos#index'
  get 'photos/engagement' => 'photos#engagement'
  get 'reception' => 'reception#index'
  get 'ceremony' => 'ceremony#index'

  resources :messages, :path => "guestbook"

  devise_for :admins
  devise_scope :admin do
    get "/admin" => "devise/sessions#new"
  end
end
