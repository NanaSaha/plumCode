Rails.application.routes.draw do
  resources :apply_classes
  # resources :users
  devise_for :users
  resources :course_details
  resources :courses
  get 'home/index'



   get '/users' => 'users#index'

  get '/users/new' => 'users#new', :as => 'new_user'
  get '/users/:id/edit' => 'users#edit', :as => 'edit_user'
  get '/users/:id' => 'users#show', :as => 'user'
  patch '/users/:id' => 'users#update', :as => 'update_user'
  patch '/patients/:id' => 'patients#update', :as => 'update_patient'
  post 'create_user' => 'users#create', as: :create_user

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get 'show_details' => 'courses#show_details'
  get 'signin' => 'home#signin'
  get 'signup' => 'home#signup'
  get 'all_courses' => 'home#all_courses'
  get 'about_us' => 'home#about_us'
  get 'contact_us' => 'home#contact_us'
  
  
  get 'list_apply_students' => 'apply_classes#list_apply_students'
 


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
