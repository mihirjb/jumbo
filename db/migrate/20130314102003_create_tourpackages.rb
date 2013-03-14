class CreateTourpackages < ActiveRecord::Migration
  def change
    create_table :tourpackages do |t|
      t.string :title
      t.text :desc
      t.text :iternary
      t.integer :price
      t.text :countries
      t.integer :numdays
      t.text :landmarks
      t.integer :maxseats
      t.integer :minseats
      t.datetime :startdate
      t.datetime :enddate
      t.boolean :incairfare
      t.boolean :incbreakfast
      t.boolean :inclunch
      t.boolean :incsnacks
      t.boolean :incdinner
      t.string :sourcecity
      t.text :sourceaddress
      t.datetime :deptime
      t.datetime :arrtime
      t.boolean :active

      t.timestamps
    end
  end
end
