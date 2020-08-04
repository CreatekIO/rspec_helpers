module CapybaraJsHelpers
  module SelectizeHelper
    def selectize_add_item(selector, item_value)
      selectize_exec(selector, "addItem('#{item_value}')")
    end

    def selectize_remove_item(selector, item_value)
      selectize_exec(selector, "removeItem('#{item_value}')")
    end

    def selectize_search(selector, search_term)
      selectize_exec(selector, "onSearchChange('#{search_term}')")
      selectize_exec(selector, "open()")
    end

    def selectize_exec(selector, command)
      page.execute_script("$('#{selector}')[0].selectize.#{command}")
    end
  end
end
