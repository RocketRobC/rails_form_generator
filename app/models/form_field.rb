class FormField < ApplicationRecord
  belongs_to :form_template
  has_many :form_field_options, dependent: :destroy
  accepts_nested_attributes_for :form_field_options

  PARTIALS = {
    number: 'form_fields/number',
    select: 'form_fields/select',
    text: 'form_fields/text'
  }.with_indifferent_access
end
