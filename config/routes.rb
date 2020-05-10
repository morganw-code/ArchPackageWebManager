Rails.application.routes.draw do
  get "/", to: "packages#index", :as => :repos
end
