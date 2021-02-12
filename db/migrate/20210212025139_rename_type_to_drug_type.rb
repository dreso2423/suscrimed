class RenameTypeToDrugType < ActiveRecord::Migration[6.0]
  def change
    rename_column :drugs, :type, :drug_type
    ## rename_column :table_name, :old_name, :new_name

  end
end
