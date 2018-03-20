class PokemonsController < ApplicationController
	
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to '/'
	end 

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		trainer_id = @pokemon.trainer_id
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(id: trainer_id)
	end

	def new
		@pokemon = Pokemon.new 
	end

	def create
		@pokemon = Pokemon.create(poke_params)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		if @pokemon.save
			redirect_to trainer_path(id: current_trainer.id)
		else
			flash[:notice] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
	end
	
	private 

		def poke_params
			params.require(:pokemon).permit(:name, :ndex)
		end  

end
