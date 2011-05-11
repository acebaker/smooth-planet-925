class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.string :contact
      t.string :about
    end
  end

  def self.down
    drop_table :people
  end
end
