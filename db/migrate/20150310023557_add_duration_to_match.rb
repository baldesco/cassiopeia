class AddDurationToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :duration, :integer
  end
end
