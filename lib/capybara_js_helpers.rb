require 'capybara_js_helpers/selectize_helper.rb'
require 'capybara_js_helpers/sweet_alert_helper.rb'
require 'capybara_js_helpers/ck_editor_helper.rb'

module CapybaraJsHelpers
  def self.execute_script(javascript, **variables)
    definitions = []
    arguments = []

    variables.each_with_index do |(var, value), index|
      definitions << "var #{var} = arguments[#{index}];"
      arguments << value
    end

    Capybara.current_session.execute_script(
      "#{definitions.join("\n")}\n#{javascript}",
      *arguments
    )
  end
end
