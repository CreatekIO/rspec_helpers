# cabybara_helpers

**capybara_helpers** is a gem that provides a number of Capybara helper methods for common JavaScript libraries such 
as CKEditor, Selectize and SweetAlert. 

### Installation 
```bash
gem install 'capybara_helpers'
```

or add it to your `Gemfile`. Then, add the following to your `rails_helper`

```ruby
RSpec.configure do |config|
  config.include CapybaraJsHelpers::SweetAlertHelper, js: :true
  config.include CapybaraJsHelpers::SelectizeHelper, js: true
  config.include CapybaraJsHelpers::CkEditorHelper, js: true
end
```

### Usage
 
#### CKEditor helpers
```ruby
# ckeditor_fill_in - Fills in a ckeditor text box with the content provided, e.g.:
ckeditor_fill_in 'email_message', with: 'Have a nice day'
```

#### Selectize helpers
```ruby
# selectize_add_item - Adds an item
selectize_add_item('#user_id', user_1.id)

# selectize_remove_item - Removes an item
selectize_remove_item('#user_id', user_1.id)

# selectize_search Casues selectize to issue a search - useful when using remote data loading
selectize_search('#user_id', 'Fred')
```

#### SweetAlert helpers
```ruby
# sweet_alert_ok - clicks the ok on a SweetAlert modal
sweet_alert_ok
```
