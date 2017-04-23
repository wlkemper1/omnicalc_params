class CalculationsController < ApplicationController

  def flexible_square
    @the_number = params["num"].to_f
    render("calculations/flexible_square.html.erb")
  end

  def flexible_squareroot
    @the_number = params["num"].to_f
    render("calculations/flexible_squareroot.html.erb")
  end

  def flexible_payment
    @basis_points = params["basis"].to_f / 100
    @number_of_years = params["years"].to_f
    @present_value = params["pv"].to_f

    @months =  @number_of_years*12
    @monthly_rate = @basis_points/1200

    @rounded_dollars = sprintf("%.2f", (@present_value*(@monthly_rate*(1+@monthly_rate)**@months) / ((1+@monthly_rate)**@months - 1)))

    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random
    @min = params["min"].to_i
    @max = params["max"].to_i
    @random_number = rand(@min..@max)
    render("calculations/flexible_random.html.erb")
  end

def square_form
    render("calculations/square_form.html.erb")
end

def square
    @the_number = params[:user_number].to_f
    render("calculations/square.html.erb")
end

def squareroot_form
    render("calculations/squareroot_form.html.erb")
end

def squareroot
    @the_number = params[:user_number].to_f
    render("calculations/square_root.html.erb")
end

def payment_form
    render("calculations/payment_form.html.erb")
end

def payment
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_f.round(0)
    @principal = params[:user_principal].to_f.round(0)
    @months =  @years*12
    @monthly_rate = @apr/1200
    @rounded_dollars = sprintf("%.2f", (@principal*(@monthly_rate*(1+@monthly_rate)**@months) / ((1+@monthly_rate)**@months - 1)))
    render("calculations/payment.html.erb")
end


def random_form
    render("calculations/random_form.html.erb")
end

def random
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random_number = rand(@min..@max)
    render("calculations/random.html.erb")
end

def navigation
    render("calculations/navigation.html.erb")
end

end
