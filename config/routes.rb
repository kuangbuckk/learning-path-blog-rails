Rails.application.routes.draw do
  devise_for :users #login, register,... for user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   #get '/users/sign_out' => 'devise/sessions#destroy'
  #   post '/users/sign_up' => 'devise/registrations#create'
  # end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  resources :blog_posts
  # get "up" => "rails/health#show", as: :rails_health_check

  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # patch "/blog_posts/:id", to: "blog_posts#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  # Defines the root path route ("/")

  resources :articles
  # get "/articles/new", to: "articles#new", as: :new_article
  # get "/articles/:id", to: "articles#show", as: :article
  # get "/articles", to: "articles#index"
  #
  # post "/articles", to: "articles#create", as: :article_create

  root "blog_posts#index"
end
