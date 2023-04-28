Rails.application.routes.draw do
  constraints subdomain: ENV['SUBDOMAIN_CONSOLE'] do
    scope module: :console, as: :console do
      devise_for :admins, module: "console/admins"
      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      # Defines the root path route ("/")
      root to: "dashboard#index"
    end
  end
end
