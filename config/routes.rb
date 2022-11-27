Rails.application.routes.draw do

  # Routes for the Tracker resource:

  # CREATE
  post("/insert_tracker", { :controller => "trackers", :action => "create" })
          
  # READ
  get("/trackers", { :controller => "trackers", :action => "index" })
  
  get("/trackers/:path_id", { :controller => "trackers", :action => "show" })
  
  # UPDATE
  
  post("/modify_tracker/:path_id", { :controller => "trackers", :action => "update" })
  
  # DELETE
  get("/delete_tracker/:path_id", { :controller => "trackers", :action => "destroy" })

  #------------------------------

  # Routes for the Strength comparison resource:

  # CREATE
  post("/insert_strength_comparison", { :controller => "strength_comparisons", :action => "create" })
          
  # READ
  get("/strength_comparisons", { :controller => "strength_comparisons", :action => "index" })
  
  get("/strength_comparisons/:path_id", { :controller => "strength_comparisons", :action => "show" })
  
  # UPDATE
  
  post("/modify_strength_comparison/:path_id", { :controller => "strength_comparisons", :action => "update" })
  
  # DELETE
  get("/delete_strength_comparison/:path_id", { :controller => "strength_comparisons", :action => "destroy" })

  # INDEX
  get("/progress", { :controller => "strength_comparisons", :action => "evaluate_strength" })
  #------------------------------

  # Routes for the Exercise resource:

  # CREATE
  post("/insert_exercise", { :controller => "exercises", :action => "create" })
          
  # READ
  get("/exercises", { :controller => "exercises", :action => "index" })
  
  get("/exercises/:path_id", { :controller => "exercises", :action => "show" })
  
  # UPDATE
  
  post("/modify_exercise/:path_id", { :controller => "exercises", :action => "update" })
  
  # DELETE
  get("/delete_exercise/:path_id", { :controller => "exercises", :action => "destroy" })

  # Routes for excercise
  get("/exercises", { :controller => "exercises", :action => "show" })

  #------------------------------

  # Index
  get("/", { :controller => "application", :action => "index" }) 

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
