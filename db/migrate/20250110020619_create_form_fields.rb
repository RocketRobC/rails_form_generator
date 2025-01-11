class CreateFormFields < ActiveRecord::Migration[8.0]
  def change
    create_table :form_fields do |t|
      t.references :form_template, foreign_key: true
      t.string :label
      t.integer :order
      t.string :field_type

      t.timestamps
    end
  end
end
