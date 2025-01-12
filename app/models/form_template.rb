class FormTemplate < ApplicationRecord
  has_many :form_fields
  has_many :form_responses

  accepts_nested_attributes_for :form_fields
end
