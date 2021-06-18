Rails.application.routes.draw do
  resources :vehicles do
    match '/scrape', to: 'vehicles#scrape', via: :post, on: :collection
  end

  root to: 'vehicles#index'
end
