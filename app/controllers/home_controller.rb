class HomeController < ApplicationController
  def index
  end

  def form
  	name = params[:contact_us][:name]
  	email = params[:contact_us][:email]
  	messsage = params[:contact_us][:messsage] rescue ""
  	ip = request.remote_ip

  	Contact.create(nome: name, email: email, comentario: messsage, ip: ip)
  	redirect_to root_path
  end
end
