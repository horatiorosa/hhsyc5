Rails.application.routes.draw do

  devise_for :admins
      
  
  get 'admins_fisher', to: 'admins#index'

  get 'aboutus', to: 'static_pages#aboutus'
  get 'mission', to: 'static_pages#mission'
  get 'company_history', to: 'static_pages#company_history'
  get 'company_structure', to: 'static_pages#company_structure'
  get 'cf_bio', to: 'static_pages#cf_bio'
  get 'rf_bio', to: 'static_pages#rf_bio'
  get 'hysyc_divisions', to: 'static_pages#hhsyc_divisions'
  get 'map', to: 'static_pages#map'
  get 'ccd', to: 'static_pages#ccd'
  get 'red', to: 'static_pages#red'
  
  get 'projects', to: 'static_pages#projects'
  get 'ebobc', to: 'static_pages#ebobc'
  get 'juneteenth', to: 'static_pages#juneteenth'
  
  
  get 'welcome', to: 'welcome#index'
  


  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
