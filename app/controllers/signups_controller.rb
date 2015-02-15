class SignupsController < ApplicationController
	def new
 @signup = Signup.new
  @allSignups =Signup.all
  end
  
 
  
  
  
   def create
  @signup=Signup.new(signup_params)
  if @signup.save
  redirect_to thanks_url
  else
  render('new')
  end
  end
  
  private

  def signup_params
    params.require(:signup).permit(:email)
  end
end
