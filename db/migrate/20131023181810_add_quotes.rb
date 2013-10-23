class AddQuotes < ActiveRecord::Migration
  def change
  	create_table :quotes do |t|
  		t.string :provider, null: false
  		t.decimal :price, null: false
  		t.text :info, null: false
  		t.integer :user_id
  		t.foreign_key :users
  		t.integer :service_id
  		t.foreign_key :services

  		t.timestamps
  	end




  	# reversible do |dir|
  	# 	dir.up do
  	# 		execute <<-SQL
			# 	ALTER TABLE quotes
			# 		ADD CONTSTRAINT fk_quotes_users
			# 		FOREIGN KEY (user_id)
			# 		REFERENCES users(id)
 		# 	SQL

			# execute <<-SQL
			# 	ALTER TABLE quotes
			# 		ADD CONTSTRAINT fk_quotes_services
			# 		FOREIGN KEY (service_key)
			# 		REFERENCES services(id)
  	# 		SQL
  	# 	end

  	# 	dir.down do
  	# 		execute <<-SQL
			# 	ALTER TABLE quotes
			# 		DROP FOREIGN KEY fk_quotes_users

			# 	ALTER TABLE quotes
			# 		DROP FOREIGN KEY fk_quotes_services
  	# 		SQL
  	# 	end
  	# end
  end
end
