Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :links
  root 'links#new'
  get ':shorted_url' => 'links#go'
end
