Rails.application.routes.draw do

  namespace :api do
    namespace :version1 do
      root 'project#index'
      get 'project/show'
      post 'project/create_list'
      post 'project/create_item'
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
