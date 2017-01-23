# rspec_helpers

Add helpers as follows

```ruby
RSpec.configure do |config|
  config.include RspecHelpers::SweetAlertHelper, js: :true
  config.include RspecHelpers::SelectizeHelper, js: true
  config.include RspecHelpers::CkEditorHelper, js: true

end
```
