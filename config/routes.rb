Rails.application.routes.draw do

  devise_for :users
  resources :users, :only =>[:show] do
    member do
      put "follow", to: "users#follow"
      put "unfollow", to: "users#unfollow"
    end
  end
  
  # Allow Desive to use DELETE for the log out route
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'
   get '/users', to: "users#index"
   get '/users/:full_name', to: "users#show"
   put 'admin/:id', to: "users#make_admin"
   put 'users/:id', to: "users#remove_admin"
   delete 'users/:id', to: "users#destroy"
  end

  root 'home#index'
  get 'home/index'
  get '/about', to: "about#about"
  get '/collection', to: "collection#collection"
  get '/bookmarks', to: "bookmarks#bookmarks"
  get '/dashboard', to: "dashboard#dashboard"
  get 'search/results'
  
  get 'tags/:tag', to: 'articles#index', as: "tag"

  
  resources :tags do 
    get '/tags', to: 'tags#index'
    delete '/tags/:id', to: 'tags#destroy'
  end

  resources :articles do 
    resources :comments
    member do
      put "bookmark", to: "articles#like"
      put "unbookmark", to: "articles#unlike"
      
      put "upvote", to: "articles#upvote"
      put "unupvote", to: "articles#unupvote"
      put "downvote", to: "articles#downvote"
      put "undownvote", to: "articles#undownvote"
    end
  end

  resources :comments do
    resources :comments
    member do
      put "bookmark", to: "comments#bookmark_comment"
      put "unbookmark", to: "comments#unbookmark_comment"
    end
  end
  
  resources :categories do
    member do
      put "subscribe", to: "categories#subscribe"
      put "unsubscribe", to: "categories#unsubscribe"
    end
  end
  
  #resources :bookmarks

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
