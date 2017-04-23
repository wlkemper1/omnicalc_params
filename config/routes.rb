Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:num", {
    :controller => "calculations",
    :action => "flexible_square"
  })

  get("/flexible/squareroot/:num", {
    :controller => "calculations",
    :action => "flexible_squareroot"
  })

  get("/flexible/payment/:basis/:years/:pv", {
    :controller => "calculations",
    :action => "flexible_payment"
  })

  get("/flexible/random/:min/:max", {
    :controller => "calculations",
    :action => "flexible_random"
  })

  get("/square/new", {
    :controller => "calculations",
    :action => "square_form"
  })

  get("/square/results", {
    :controller => "calculations",
    :action => "square"
  })

  get("/square_root/new", {
    :controller => "calculations",
    :action => "square_root_form"
  })

  get("/square_root/results", {
    :controller => "calculations",
    :action => "squareroot"
  })

  get("/payment/new", {
    :controller => "calculations",
    :action => "payment_form"
  })

  get("/payment/results", {
    :controller => "calculations",
    :action => "payment"
  })

  get("/random/new", {
    :controller => "calculations",
    :action => "random_form"
  })

  get("/random/results", {
    :controller => "calculations",
    :action => "random"
  })

  get("/navigation", {
    :controller => "calculations",
    :action => "navigation"
  })

end
