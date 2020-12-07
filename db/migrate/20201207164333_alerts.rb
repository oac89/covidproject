class Alerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.string :alert_type
      t.integer :user_id
      t.timestamps
    end
  end
end 
