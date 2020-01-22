class CreateCarsAndDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :title
      t.string :car_type
      t.integer :color, default: 0

      t.timestamps
    end

    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.date :birthday

      t.timestamps
    end

    create_table :cars_drivers do |t|
      t.belongs_to :car
      t.belongs_to :driver
    end
  end
end
