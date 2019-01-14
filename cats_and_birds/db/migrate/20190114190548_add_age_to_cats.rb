class AddAgeToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :age, :integer
    add_column :cats, :breed, :string
  end
end
