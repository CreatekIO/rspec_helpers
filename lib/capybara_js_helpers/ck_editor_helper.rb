module CapybaraJsHelpers
  module CkEditorHelper
    def ckeditor_fill_in(locator, with:)
      CapybaraJsHelpers.execute_script <<-SCRIPT, locator: locator, content: with
        $(function() {
          CKEDITOR.instances['%{locator}'].setData('%{content}');
          $('textarea#%{locator}').text('%{content}');
        });
      SCRIPT
    end
  end
end
