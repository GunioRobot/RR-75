require 'spec_helper'

describe Carro do

	before do
		@carro = Carro.new
	end

  	it "deveria ser novo" do
		@carro.should be_novo
	end

	it "deveria ter uma comissao de 5% do valor" do
		@carro.preco=32000
		@carro.calcula_comissao.should be == 1600.0
	end

	it do
		@carro.should_not be_an_instance_of(Moto)
	end

	fixtures :carros
	it "deveria usar fixtures" do
		monza = carros(:monza)
		monza.nome.should be == 'monza'
		monza.descricao.should be == 'vendo monza 92'
		monza.preco.should be == 12000 
	end

	it "testando fabrica" do
		c = Factory.build(:carro)
		c.nome.should be == 'celta'
		c.descricao.should be ==  'vendo celta usado, ano 2001'
		c.preco.should be == 17000
	end
	
end
