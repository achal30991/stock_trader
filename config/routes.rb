Rails.application.routes.draw do
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
