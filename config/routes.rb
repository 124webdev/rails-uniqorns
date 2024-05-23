Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :uniqorns, only: %i[show index new create] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[show index] do

  resources :reviews, only: %i[new create]

  end
  resources :reviews, only: %i[show index]

  get "pages/privacypolicy", to: "pages#privacypolicy"
  get 'pages/profile'
  get "pages/confirm", to: "pages#confirm", as: "confirm_booking"
  get "pages/reject", to: "pages#reject", as: "reject_booking"

end
