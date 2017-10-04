class CreateDriverHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :driver_histories do |t|
      t.belongs_to :peroson, foreign_key: true
      t.date :date_of_incident
      t.integer :total_value_of_claim
      t.string :incident_type
      t.text :description

      t.timestamps
    end
  end
end
