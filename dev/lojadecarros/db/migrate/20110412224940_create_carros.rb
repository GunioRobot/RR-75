class CreateCarros < ActiveRecord::Migration
  def self.up
    create_table :carros do |t|
      t.string :nome
      t.string :descricao
      t.float :preco

      t.timestamps
    end
  end

  def self.down
    drop_table :carros
  end
end
