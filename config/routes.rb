Rails.application.routes.draw do

      root 'project#index'
      get 'project/show'
      post 'project/create_list'
      post 'project/create_item'

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
