Rails.application.routes.draw do

  #changes the scope method inside config/routes
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new'
  end
end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html