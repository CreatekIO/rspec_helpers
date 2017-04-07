module CapybaraJsHelpers
  module CkEditorHelper
    def ckeditor_fill_in(locator, opts)
      content = opts.fetch(:with).to_json
      page.execute_script <<-SCRIPT
      $(function() {
        CKEDITOR.instances['#{locator}'].setData(#{content});
        $('textarea##{locator}').text(#{content});
      });
      SCRIPT
    end
  end
end
