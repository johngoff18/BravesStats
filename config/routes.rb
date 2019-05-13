Rails.application.routes.draw do
  resources :players
  get 'welcome/players'
  
  root 'welcome#players'
end
