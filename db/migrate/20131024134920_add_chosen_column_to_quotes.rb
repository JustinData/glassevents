class AddChosenColumnToQuotes < ActiveRecord::Migration
  def change
  	add_column :quotes, :chosen, :boolean, default: false
  end
end
