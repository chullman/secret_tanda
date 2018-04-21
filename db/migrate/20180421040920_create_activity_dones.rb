class CreateActivityDones < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_dones do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
