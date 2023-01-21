class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :home_name
      t.belongs_to :owner
      t.timestamps
    end
  end
end
