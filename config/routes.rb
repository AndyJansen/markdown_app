Rails.application.routes.draw do
  get 'welcome/index'
  get '/tagged', to: "notes#tagged", as: :tagged
  resources :notes do
    resources :comments
  end
  root 'welcome#index'
end
