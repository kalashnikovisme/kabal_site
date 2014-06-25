KabalSite::Application.routes.draw do
  root to: "web/numbers#new"

  scope module: :web do
    resources :numbers, only: [ :new, :create, :show ] do
      member do
        put :wrong
      end
    end
  end
end
