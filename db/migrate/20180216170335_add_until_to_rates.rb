class AddUntilToRates < ActiveRecord::Migration[5.1]
  def change
    add_column :rates, :until, :datetime
  end
end
