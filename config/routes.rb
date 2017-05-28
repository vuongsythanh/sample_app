Rails.application.routes.draw do
  root "application#hello"
  get "/hello", to: "application#hello"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"

end
