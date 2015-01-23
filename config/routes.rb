Rails.application.routes.draw do

  root "pages#index"
  get '/champions' => 'pages#champions'

end
