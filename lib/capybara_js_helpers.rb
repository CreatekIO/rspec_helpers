require 'capybara_js_helpers/selectize_helper.rb'
require 'capybara_js_helpers/sweet_alert_helper.rb'
require 'capybara_js_helpers/ck_editor_helper.rb'

module CapybaraJsHelpers
  # Adapted from action_view/helpers/javascript_helper.rb
  JS_ESCAPE_MAP = {
    '\\'    => '\\\\',
    "</"    => '<\/',
    "\r\n"  => '\n',
    "\n"    => '\n',
    "\r"    => '\n',
    '"'     => '\\"',
    "'"     => "\\'",
    "`"     => "\\`",
    "$"     => "\\$"
  }

  JS_ESCAPE_MAP[(+"\342\200\250").force_encoding(Encoding::UTF_8).encode!] = "&#x2028;"
  JS_ESCAPE_MAP[(+"\342\200\251").force_encoding(Encoding::UTF_8).encode!] = "&#x2029;"

  def self.escape_javascript(javascript)
    javascript = javascript.to_s
    return "" if javascript.empty?

    javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\251|[\n\r"']|[`]|[$])/u, JS_ESCAPE_MAP)
  end

  def self.execute_script(javascript, **interpolations)
    Capybara.current_session.execute_script(
      escape_javascript(javascript % interpolations)
    )
  end
end
