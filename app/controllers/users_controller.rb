class UsersController < ApplicationController

  before_action :load_user, only:[:show, :edit, :update, :destroy]  
	#clients/index

  #respond_to :html, :json, :xml
  def index
  	@users=User.all
  	#puts "#{@clients.inspect}"
  end

  #users/123
  def show
  end

  #clients/new
  def new
	@user=User.new  	
  end

  #clients/create
  def create
  	params_filtered=params.require(:user).permit(:username,:email,:password)
  	@user=User.new(params_filtered)
  	if @user.save
  		redirect_to users_path
  	else
  		render 'new'
  	end

  end

  def edit
    #@client = Client.find(params[:id])
  end

  #clients/update
  def update
    params_filtered=params.require(:user).permit(:username,:email)
    if @user.update(params_filtered)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to user_path, notice: 'Usuario eliminado'
  end

  def load_user
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      redirect_to users_path, 
        notice: 'El usuario no existe en el sistema'
    end
  end

  # def login
  #   @client = Client.new
  # end

  # def do_login
  #   params_filtered = params.require(:client).permit(:email, :password)
  #   @client = Client.new(params_filtered)
  #   client_fetch = @client.login #devuelve la info del usuario id
  #   if client_fetch
  #     session[:client_id] = client_fetch.id
  #     redirect_to products_path, notice: 'Bienvenido a Pepirow '
  #   else
  #   flash[:error] = 'Error al autenticar'
  #   render 'login'   
  #   end   
  # end
  # def logout
  #   session[:client_id] = nil
  #   redirect_to login_clients_path, notice: 'Volvé'
  # end

end