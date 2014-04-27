class AddDatapointRefToActivity < ActiveRecord::Migration
  def change
    add_reference :activities, :datapoint, index: true
  end
end
