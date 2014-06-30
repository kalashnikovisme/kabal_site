KabalSite::Application.routes.draw do
  root to: "web/numbers#new"

  get '/admin' => "web/admin/welcome#index"

  scope module: :web do
    resources :numbers, only: [ :new, :create, :show ]
    resources :comments, only: :create
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      resources :pages, except: :show
    end
  end
end
