class CreateDelta < ActiveRecord::Migration
  def self.up
	add_column :carros, :delta, :boolean, :default => true, :null => false
  end

  def self.down
	remove_column :carros, :delta
  end
end
