Rails.application.routes.draw do
  get 'perosons/insurance_form'
  resources :perosons
  root 'perosons#insurance_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
