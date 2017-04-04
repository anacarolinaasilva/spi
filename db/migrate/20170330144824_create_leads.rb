class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.string :string
      t.string :company
      t.string :email
      t.string :origin

      t.timestamps
    end
  end
end
