Rails.application.routes.draw do
  resources :users


  root 'sessions#new'
  get 'create' => 'users#new'
  get 'index' => 'users#index'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  #No route matches [POST] "/login"
  get "dashboard" => "pages#dashboard"

  get 'admincreateclasses' => 'navbar#admincreateclasses'
  get 'admindaily' => 'navbar#admindaily'
  get 'counselingallstudents' => 'navbar#counselingallstudents'
  get 'counselingmystudents' => 'navbar#counselingmystudents'
  get 'counselingresources' => 'navbar#counselingresources'
  get 'hrcreateannouncement' =>'navbar#hrcreateannouncement'
  get 'hrpayroll' => 'navbar#hrpayroll'
  get 'instructorsmyclasses' =>'navbar#instructorsmyclasses'
  get 'instructorsmyschedule' => 'navbar#instructorsmyschedule'
  get 'manageadmin' => 'navbar#manageadmin'
  get 'managecounselors' => 'navbar#managecounselors'
  get 'managehr' => 'navbar#managehr'
  get 'manageinstructors' => 'navbar#manageinstructors'
  get 'managestudents' => 'navbar#managestudents'
  get 'myhr' => 'navbar#myhr'
  get 'statisticsacceptances' => 'navbar#statisticsacceptances'
  get 'statisticstestscores' => 'navbar#statisticstestscores'
  get 'training' =>'navbar#training'
  get 'websiteupdates' => 'navbar#websiteupdates'

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
