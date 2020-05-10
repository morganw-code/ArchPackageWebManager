Rails.application.routes.draw do
  get "/", to: "repos#index", :as => :repos
end
