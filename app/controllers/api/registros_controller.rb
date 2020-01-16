class Api::RegistrosController < ApplicationController
  before_action :set_user, only: [:show]

 def index
   if (params[:password] == "487g472278v3dEXRCTVBYN")
     if(params[:id]=="all")

        @registros = Registro.all

       else

         @registros = Registro.where(guia: params[:id])

     end
   else
     @registros = [];
   end

  render json: @registros
 end

 def show
   if (params[:password] == "487g472278v3dEXRCTVBYN")
     if(params[:id]=="all")

        @registros = Registro.all

       else

         @registros = Registro.where(guia: params[:id])

     end
   else
     @registros = [];
   end

  render json: @registros
 end



 private
   def set_user
     @registros = Registro.where(guia: params[:guia])
   end

   def user_params
     params.require(:registros).permit(:guia, :password)
   end
end
