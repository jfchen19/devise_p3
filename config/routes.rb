Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'user/registrations'}

  root "home#index"
end
