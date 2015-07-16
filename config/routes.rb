Rails.application.routes.draw do
  get 'download/index'

  get 'download/doc'

  resources :inscriptions
  resources :activities
  resources :courses
  resources :courses
  resources :crafts
  resources :hydroponics
  resources :kitchens
  resources :energies
  resources :sales
  resources :products
  resources :herbs
  resources :snacks
  resources :breads
  resources :dairies
  resources :vegetables
  resources :fruits
  resources :download
  resources :home
  devise_for :users

 #root 'download#index'
 root :to => 'home#acerca'
  get 'home/acerca'
  get '/index' => 'fruits#index', as: :new
  get '/index' => 'vegetables#index', as: :new2
  get '/index' => 'dairies#index', as: :new3
  get '/index' => 'breads#index', as: :new4
  get '/index' => 'snacks#index', as: :new5
  get '/index' => 'herbs#index', as: :new6
  get '/index' => 'products#index', as: :new7
  get '/index' => 'sales#index', as: :new8
  get '/index' => 'energies#index', as: :new9
  get '/index' => 'crafts#index', as: :new10
  get '/index' => 'kitchens#index', as: :new11
  get '/index' => 'inscriptions#index', as: :new12
  
  #get '/index' => 'inscriptions#index', as: :new12

  #get '/acerca' => 'home#acerca'
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
