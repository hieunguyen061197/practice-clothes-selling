Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/help", to: "static_pages#help"
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "/sp1", to: "static_pages#sp1"
    get "/sp2", to: "static_pages#sp2"
    get "/sp3", to: "static_pages#sp3"
    get "/sp4", to: "static_pages#sp4"
    resources :users
  end
end
