Rails.application.routes.draw do
  resources :users


  root 'sessions#new'
  get 'create' => 'users#new'
  get 'index' => 'users#index'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  #No route matches [POST] "/login"
  get "dashboard" => "pages#dashboard"

  get 'navbar/admincreateclasses'
  get 'navbar/admindaily'
  get 'navbar/counselingallstudents'
  get 'navbar/counselingmystudent'
  get 'navbar/counselingresources'
  get 'navbar/hrcreateannouncement'
  get 'navbar/hrmyclasses'
  get 'navbar/instructorsmyschedule'
  get 'navbar/manageadmin'
  get 'navbar/managecounselors'
  get 'navbar/managehr'
  get 'navbar/manageinstructors'
  get 'navbar/managestudents'
  get 'navbar/myhr'
  get 'navbar/statisticsacceptances'
  get 'navbar/statisticstestscores'
  get 'navbar/training'
  get 'navbar/websiteupdates'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
