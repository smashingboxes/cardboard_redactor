class RedactorInput < SimpleForm::Inputs::TextInput
  def input
    input_html_options[:class] += [:redactor] 
    @builder.text_area(attribute_name, input_html_options)
  end
end