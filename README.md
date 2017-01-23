# rspec_helpers

Add helpers as follows

```ruby
RSpec.configure do |config|
  config.include RspecHelpers::SweetAlertHelpers, js: :true
  config.include RspecHelpers::SelectizeHelper, js: true
end
```
