class AddDescToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :desc, :string
  end
end
