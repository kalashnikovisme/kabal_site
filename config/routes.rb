KabalSite::Application.routes.draw do
  root to: "web/numbers#new"

  get '/admin' => "web/admin/welcome#index"

  scope module: :web do
    resources :numbers, only: [ :new, :create, :show ]
    resources :comments, only: :create
    resources :pages, only: :show
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      resources :pages, except: :show
      resources :numbers, except: :show
      resources :comments, except: :show
    end
  end
end
