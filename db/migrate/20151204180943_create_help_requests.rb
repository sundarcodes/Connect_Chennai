class CreateHelpRequests < ActiveRecord::Migration
  def change
    create_table :help_requests do |t|
      t.string :name
      t.string :apt
      t.string :street
      t.string :locality
      t.integer :pincode
      t.string :city
      t.integer :phone
      t.text :need_of_hour

      t.timestamps null: false
    end
  end
end
