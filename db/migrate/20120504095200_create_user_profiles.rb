class CreateUserProfiles < ActiveRecord::Migration
  def change
  #id, userid, fname, lname, mname , street, country ,  state, city, zipcode, age ,gender, birthdate, photosrc
    create_table :user_profiles do |t|
      t.integer :userid
      t.string :fname
      t.string :lname
      t.string :mname
      t.string :street
      t.string :country
      t.string :state
      t.string :city
      t.string :zipcode
      t.string :age
      t.string :gender
      t.datetime :birthdate
      t.string :photosrc
      t.timestamps
    end
  end
end
