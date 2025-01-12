class CreateFormFieldOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :form_field_options do |t|
      t.string :value
      t.integer :order
      t.references :form_field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
