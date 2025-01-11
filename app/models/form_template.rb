class FormTemplate < ApplicationRecord
  has_many :form_fields
  accepts_nested_attributes_for :form_fields
  has_many :form_responses
end
