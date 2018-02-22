class CreateCheckIns < ActiveRecord::Migration[5.1]
  def change
    create_table :check_ins do |t|
      t.integer :user_id
      t.integer :status
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
