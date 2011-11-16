class Carro < ActiveRecord::Base
	def novo?
		true
	end

	def calcula_comissao
		preco * 0.05
	end

	define_index do
		indexes nome, :sortable => true

		has descricao, preco, created_at, updated_at
		set_property :delta => true
	end
end
