KabalSite::Application.routes.draw do
  root to: "web/welcome#index"

  get '/admin' => "web/admin/welcome#index"

  scope module: :web do
    resources :errors, only: [] do
      collection do
        get :not_found
        get :forbidden
      end
    end
    resources :numbers, only: [ :new, :create, :show ]
    resources :comments, only: :create
    resources :pages do
      collection do
        get ":slug" => "pages#show"
      end
    end
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      resources :pages, except: :show
      resources :numbers, except: :show
      resources :comments, except: :show
    end
  end
  match '*unmatched_route', to: "web/errors#not_found" if Rails.env.production?
end
