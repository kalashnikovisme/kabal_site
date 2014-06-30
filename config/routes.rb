KabalSite::Application.routes.draw do
  root to: "web/numbers#new"

  scope module: :web do
    resources :numbers, only: [ :new, :create, :show ]
    resources :comments, only: :create
    resource :sessions, only: [:new, :create, :destroy]
    namespace :admin do
      resources :welcome, only: :index
      resources :pages, except: :show
    end
  end
end
