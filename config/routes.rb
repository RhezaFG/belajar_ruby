Rails.application.routes.draw do
  resources :books
  get 'cobacoba/index'
  get 'index' => 'home#index'
  get 'cobacoba' => 'cobacoba#index'
  get 'artikel' => 'home#artikel'
  get 'about' => 'home#about'
  get '/' => 'home#index'
  get 'books'=> 'books#index'
  get 'cobacoba/input' => 'cobacoba#input'
  post 'cobacoba/create' => 'cobacoba#create'
  post 'cobacoba/update/:id' => 'cobacoba#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'cobacoba/detail/:id' => 'cobacoba#detail'
  get 'cobacoba/edit/:id' => 'cobacoba#edit'
  get 'cobacoba/delete/:id' => 'cobacoba#delete'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
