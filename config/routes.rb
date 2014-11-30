Rails.application.routes.draw do

  root 'home#index'

  get 'photos' => 'photos#index'
  get 'reception' => 'reception#index'
  get 'ceremony' => 'ceremony#index'

end
