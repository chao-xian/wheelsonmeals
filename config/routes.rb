Rails.application.routes.draw do
  root "meals#index"

  get "/meals", to: "meals#index"
end
