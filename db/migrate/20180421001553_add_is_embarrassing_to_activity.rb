class AddIsEmbarrassingToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :is_embarrassing, :boolean
  end
end
