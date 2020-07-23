class CreateFulfillments < ActiveRecord::Migration[6.0]
  def change
    create_table :fulfillments do |t|
      t.boolean :fulfilled
      t.date :procedure_date
      t.string :gestation_at_procedure
      t.integer :fund_payout
      t.string :check_number
      t.string :date_of_check
      t.boolean :audited
      t.references :can_fulfill, polymorphic: true, null: false

      t.timestamps
    end
  end
end
