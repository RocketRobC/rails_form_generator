class CreateFormTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :form_templates do |t|
      t.string :name

      t.timestamps
    end
  end
end
