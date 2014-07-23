require "rspec/core/formatters/base_text_formatter"

class CustomFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def initialize(output)
    super(output)
  end

  def example_started(proxy)
    output << "example: " << proxy.description
  end
end
