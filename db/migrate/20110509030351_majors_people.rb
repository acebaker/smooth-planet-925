class MajorsPeople < ActiveRecord::Migration
  def self.up
    create_table :majors_people do |t|
      t.references :major
      t.references :person
    end
  end

  def self.down
    drop_table :majors_people
  end
end
