Rails.application.routes.draw do

  resources :authors do 
    collection do
      get :_author
    end
  end
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
