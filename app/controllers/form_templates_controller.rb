class FormTemplatesController < ApplicationController
  before_action :set_form_template, only: [:show]

  def index
    @form_templates = FormTemplate.order(:id)
  end

  def new
    @form_field = FormField.new
    @form_template = FormTemplate.new(form_fields: [@form_field])
  end

  def show
    @responses = @form_template.form_responses
  end

  def create
    @form_template = FormTemplate.new(form_template_params)

    if @form_template.save
      redirect_to @form_template
    else
      render :new, status: :unprocessable_entity, notice: 'Unable to create a new template'
    end
  end

  private

  def set_form_template
    @form_template = FormTemplate.find(params.expect(:id))
  end

  def form_template_params
    params.expect(form_template: [:name, form_fields_attributes: [[:label, :field_type, :order]] ])
  end
end
