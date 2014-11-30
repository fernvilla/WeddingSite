Rails.application.routes.draw do

  root 'home#index'

  get 'photos' => 'photos#index'
  get 'photos/engagement' => 'photos#engagement'
  get 'reception' => 'reception#index'
  get 'ceremony' => 'ceremony#index'

end
