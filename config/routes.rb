Rails.application.routes.draw do
  root 'site#index'
  get '/about' => 'site#about'
  get '/contact' => 'site#contact'
end
