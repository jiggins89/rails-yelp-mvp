Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # customize for all '/restaurants' paths
    collection do
      get 'top', to: 'restaurants#top'
    end

    # two routes i want to create for reviews
    # /restaurants/:restaurant_id/reviews/:id
    resources :reviews, only: [:new, :create]
  end
end
