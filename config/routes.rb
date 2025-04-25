Rails.application.routes.draw do
  resources :articles, only: [:index, :create, :show] do
    member do
      put :update, to: 'articles#update'
      delete :destroy, to: 'articles#destroy'
      patch :update, to: 'articles#patch'
    end
  end
end
