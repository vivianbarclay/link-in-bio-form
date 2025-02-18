Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/startupideas", { :controller => "startup", :action => "index" })
  get("/typography-in-ten-minutes", { :controller => "typography", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "backdoor" }) # Add a backdoor page
  post("/insert_item", { :controller => "items", :action => "create" }) # Handle form submissions
end
