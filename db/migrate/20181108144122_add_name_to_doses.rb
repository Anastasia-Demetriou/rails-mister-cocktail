class AddNameToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :name, :string
  end
end
