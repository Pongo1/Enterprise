class CreateBdaes < ActiveRecord::Migration[5.0]
  def change
    create_table :bdaes do |t|
      t.string :firstname
      t.string :lastname
      t.datetime :date

      t.timestamps
    end
  end
end
