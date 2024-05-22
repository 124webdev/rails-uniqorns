Rails.application.routes.draw do
  get 'pages/profile'
  # get 'uniqorns/index'
  devise_for :users
  root to: "pages#home"

  resources :uniqorns, only: %i[show index new create] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[show index] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[show index]

  patch 'bookings/:id/confirm', to: 'bookings#confirm'
  patch 'bookings/:id/reject', to: 'bookings#reject'

  get "pages/privacypolicy", to: "pages#privacypolicy"

end
