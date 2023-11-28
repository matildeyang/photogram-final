Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})

  get("/delete_photo/:path_id", { :controller => "photos", :action => "delete"})

  get("/insert_photo", { :controller => "photos", :action => "insert"})
  get("/update_photo/:modify_id", { :controller => "photos", :action => "update"})

  get("/add_comment", { :controller => "photos", :action => "comment"})

end
