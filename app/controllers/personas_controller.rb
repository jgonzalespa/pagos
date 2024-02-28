class PersonasController < ApplicationController

    def index
        @personas = Persona.all
    end

    def show
        @persona = Persona.find(params[:id])
    end

    def edit
        @persona = Persona.find(params[:id])
        @persona.pagos.build
    end

    def update
        @persona = Persona.find(params[:id])

        if @persona.update person_param 
            redirect_to personas_path, notice: "Datos guardados correctamente!"
        else
            render :edit, status: :unprocessable_entity
        end
    end

	def destroy
		@persona = Persona.find(params[:id])
		@persona.destroy

		redirect_to personas_path, notice: "Registro eliminado correctamente!"
	end


    def create
		@persona = Persona.new person_param        
        if @persona.save then
			redirect_to personas_path, notice: "Registro guardado correctamente!"
		else
			render :new, status: :unprocessable_entity
		end
	end

    def new
        @persona = Persona.new
        @persona.pagos.build
		@url = personas_path
    end

    private
    def person_param
        params.require(:persona).permit(:nombre, :dni, :capitulo_id, :photo, pagos_attributes:[:id, :fechapago, :anio, :mes, :monto])
    end

 


end
