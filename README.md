# rspec_helpers

Add helpers as follows

RSpec.configure do |config|
  config.include RspecHelpers::SweetAlertHelpers, js: :true
end
