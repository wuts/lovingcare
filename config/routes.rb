ActionController::Routing::Routes.draw do |map|
  map.resources :payments

  map.resources :activities

  map.resources :items

  map.resources :brokers

  map.resources :appeals

  map.resources :users

  map.resource :session

  # The priority is based upon order of creation: first created -> highest priority.

  map.namespace :admin do |admin|
     admin.resources :activities,:active_scaffold=>true
     admin.resources :catagories,:active_scaffold=>true
     admin.resources :properties,:active_scaffold=>true
     admin.resources :statuses,:active_scaffold=>true
     admin.resources :items,:active_scaffold=>true
     admin.resources :roles,:active_scaffold=>true
     admin.resources :users,:active_scaffold=>true
  end
   map.signup '/signup', :controller => 'users', :action => 'new'
   map.login '/login', :controller => 'sessions', :action => 'new'
   map.logout '/logout', :controller => 'sessions', :action => 'destroy'
   map.home '/home', :controller => 'home', :action => 'index'
   map.appeals '/appeals',:controller=> 'appeals',:action=>'index'


  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
