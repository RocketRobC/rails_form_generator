class CreateFormResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :form_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :form_template, null: false, foreign_key: true
      t.json :response_data

      t.timestamps
    end
  end
end
