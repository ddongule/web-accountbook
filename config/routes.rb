Rails.application.routes.draw do
  root 'home#showmemytax'
  resources :conmen
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
