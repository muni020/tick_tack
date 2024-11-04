class UsersController < ApplicationController
     def index
        @users = User.all
        p "==================="
        p @users
        p "==================="
     end

     def new
         @user = User.new
     end

     def create
         p "============Paramas============"
         parameters = filter_parameters
         parameters[:win] = 0
         parameters[:lose] = 0
         @user = User.new(parameters)
         if @user.save
            redirect_to  "/users", notice: "User Created successfully"
         else
            render :new, status: :unprocessable_entity
         end
     end

     def destroy
         p "============Delete Paramas============"
         p "PArams #{params[:id]}"
         @user = User.find(params[:id])
         @user.destroy
         redirect_to "/"
         p "============Delete Paramas============"
     end

     def edit
        @user = User.find(params[:id])
        p "Edit params user"
        p @user
        p "Edit params user"
     end
    def update
        p "comminf to update ========================"
        @user = User.find(params[:id])
        if @user.update(filter_parameters)
            redirect_to "/" , notice: "User Updated successfully"
        else
            render :edit, status: :unprocessable_entity
        end
    end


     private
     def filter_parameters
         params.require(:user).permit(:name, :password)
     end

     public

     def login
         
     end

     def check_login_credencials
        p "===========================check_login_credencials=============================="
        @user = User.find_by(name: params[:name], password: params[:password])
        if @user
            redirect_to "/game/start/#{@user.id}"
          else
            redirect_to "/user/login", notice: "Wrong Credendiacls"
          end
        p "==========================check_login_credencials=================================="
     end
end