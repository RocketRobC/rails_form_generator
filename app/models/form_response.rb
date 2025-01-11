class FormResponse < ApplicationRecord
  belongs_to :user
  belongs_to :form_template
end
