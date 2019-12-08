Rails.application.routes.draw do
  resources :questions do
    resources :comments
  end

  resource :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
