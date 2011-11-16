$LOAD_PATH << '.'

require 'test/unit'
require 'carro'

class TestaCarro < Test::Unit::TestCase
	
	def testa_comissao_de_venda_de_carro
		carro = Carro.new
		carro.valor = 32000
		puts carro.calcula_comissao
		assert_equal 1600.0, carro.calcula_comissao
	end

end
