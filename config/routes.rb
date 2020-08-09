Rails.application.routes.draw do
  get 'foo/foo'
  get 'foo/bar'
  get 'foo/baz'
  get 'foo/fizz'
  get 'static_pages/home'
  # -> static_page#home
  get 'static_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello' 
end
