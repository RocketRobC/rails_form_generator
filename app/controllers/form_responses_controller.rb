class FormResponsesController < ApplicationController
  def show
  end

  def new
    @form_response = FormResponse.new(form_template_id: params.expect(:form_template_id))
    @template_fields = FormTemplate.find(params.expect(:form_template_id)).form_fields.order(:order)
  end

  def create
    puts params
    @form_response = FormResponse.new(form_response_params)
    if @form_response.save
      redirect_to @form_response
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def form_response_params
    params.expect(form_response: [:user_id, :form_template_id, response_data: {}])
  end
end
