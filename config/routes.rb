Rails.application.routes.draw do
  get 'sessions/new'

  #get 'dashboard/home'
root 'dashboard#home'

get '/download'=>'prov_guide_details#download_provguide_template'
get '/upload'=>'prov_guide_details#upload'
 resources :prov_guide_details do
   collection { post :import }
 end
	
#root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
