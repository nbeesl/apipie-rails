Dummy::Application.routes.draw do

  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    
    scope '/api' do
      resources :users
      resources :twitter_example do
        collection do
          get :lookup
          get 'profile_image/:screen_name' => 'twitter_example#profile_image'
          get :search
          get :search
          get :contributors
        end
      end
    end

    restapi
  end
  root :to => 'restapi/restapis#index'
end
