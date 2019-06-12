Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "portfolios#index"
  # Routes for the Upvote resource:

  # CREATE
  get("/upvotes/new", { :controller => "upvotes", :action => "new_form" })
  post("/create_upvote", { :controller => "upvotes", :action => "create_row" })

  # READ
  get("/upvotes", { :controller => "upvotes", :action => "index" })
  get("/upvotes/:id_to_display", { :controller => "upvotes", :action => "show" })

  # UPDATE
  get("/upvotes/:prefill_with_id/edit", { :controller => "upvotes", :action => "edit_form" })
  post("/update_upvote/:id_to_modify", { :controller => "upvotes", :action => "update_row" })

  # DELETE
  get("/delete_upvote/:id_to_remove", { :controller => "upvotes", :action => "destroy_row" })

  #------------------------------

  devise_for :experts
  # Routes for the Expert resource:

  # READ
  get("/experts", { :controller => "experts", :action => "index" })
  get("/experts/:id_to_display", { :controller => "experts", :action => "show" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Stock resource:

  # CREATE
  get("/stocks/new", { :controller => "stocks", :action => "new_form" })
  post("/create_stock", { :controller => "stocks", :action => "create_row" })

  # READ
  get("/stocks", { :controller => "stocks", :action => "index" })
  get("/stocks/:id_to_display", { :controller => "stocks", :action => "show" })

  # UPDATE
  get("/stocks/:prefill_with_id/edit", { :controller => "stocks", :action => "edit_form" })
  post("/update_stock/:id_to_modify", { :controller => "stocks", :action => "update_row" })

  # DELETE
  get("/delete_stock/:id_to_remove", { :controller => "stocks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Portfolio resource:

  # CREATE
  get("/portfolios/new", { :controller => "portfolios", :action => "new_form" })
  post("/create_portfolio", { :controller => "portfolios", :action => "create_row" })

  # READ
  get("/portfolios", { :controller => "portfolios", :action => "index" })
  get("/portfolios/:id_to_display", { :controller => "portfolios", :action => "show" })

  # UPDATE
  get("/portfolios/:prefill_with_id/edit", { :controller => "portfolios", :action => "edit_form" })
  post("/update_portfolio/:id_to_modify", { :controller => "portfolios", :action => "update_row" })

  # DELETE
  get("/delete_portfolio/:id_to_remove", { :controller => "portfolios", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
