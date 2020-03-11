Rails.application.routes.draw do
  get 'welcome/index'
  get '/tagged', to: "notes#tagged", as: :tagged

  resources :notes
  root 'welcome#index'
end
