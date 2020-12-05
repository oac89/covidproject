class TypeToAlertType < ActiveRecord::Migration[6.0]
  def change
    rename_column :alerts, :type, :alert_type 
  end
end
