Rails.application.routes.draw do
  root "application#hello"
  get "/hello", to: "application#hello"
end
