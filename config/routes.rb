Rails.application.routes.draw do
  get 'welcome/players'
  
  root 'welcome#players'
end
