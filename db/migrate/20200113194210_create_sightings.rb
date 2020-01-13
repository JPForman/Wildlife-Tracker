class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.column(:animal_id, :integer)
      t.column(:lattitude, :decimal)
      t.column(:logitude, :decimal)
      t.column(:date, :date)
      t.timestamps()
    end
  end
end
