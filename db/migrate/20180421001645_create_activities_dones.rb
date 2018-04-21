class CreateActivitiesDones < ActiveRecord::Migration[5.1]
  def change
    create_table :activities_dones do |t|
      t.references :user, foreign_key: true
      t.references :activities, foreign_key: true

      t.timestamps
    end
  end
end
