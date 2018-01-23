Rails.application.routes.draw do
  # auth
  post 'authenticate', to: 'authentication#authenticate'
  # android
  get 'unsurs', to: 'unsurs#index'
  get 'unsur/:id', to: 'unsurs#show'
  get 'search/:key', to: 'unsurs#search'
  get 'periode/:periode', to: 'unsurs#periode'
  get 'golongan/:golongan', to: 'unsurs#golongan'
end
