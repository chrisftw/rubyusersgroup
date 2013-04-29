class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.text :profile
      t.string :established_on

      t.timestamps
    end
  end
end
