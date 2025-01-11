class FormField < ApplicationRecord
  belongs_to :form_template

  PARTIALS = {
    text: 'form_fields/text',
    number: 'form_fields/number'
  }.with_indifferent_access
end
