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


end
