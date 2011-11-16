class CarrosController < ApplicationController
	caches_page :index

	def index
		@carro = Carro.new
		@carros = Carro.all
	end

	def create
		carro = Carro.new(params[:carro])
		carro.save
		redirect_to :action => "index"
		
	end

	def busca
		@query = params[:query]
		@carro = Carro.new
		@carros = Carro.search @query, :match_mode => :all
		render :action => 'index'
	end
end
