Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: %i[destroy edit update] do
    resources :bookmarks, except: %i[edit update destroy]
  end

  resources :bookmarks, :destroy
end
