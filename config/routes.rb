Rails.application.routes.draw do

  root to: 'pages#home'

  get 'about-me', to: 'pages#about'
  get 'pages/contact'

  resources :blogs

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

end
