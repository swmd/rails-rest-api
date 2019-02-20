class CreateInstallments < ActiveRecord::Migration[5.2]
  def change
    create_table :installments do |t|
      t.integer :present_value
      t.decimal :number_of_installments
      t.decimal :monthly_interest_rate

      t.timestamps
    end
  end
end
