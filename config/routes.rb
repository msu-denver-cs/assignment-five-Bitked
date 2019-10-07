Rails.application.routes.draw do
  resources :parts do
    get :autocomplete_part_part, on: :collection
    collection do
      get 'search'
    end
  end

  resources :cars do
    get :autocomplete_car_vin, on: :collection
    collection do
      get 'search'
    end
  end
  
  resources :makes do
    get :autocomplete_make_make, on: :collection
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
