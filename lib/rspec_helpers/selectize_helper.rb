module RspecHelpers
  module SelectizeHelper
    def selectize_add_item(selector, item_value)
      page.execute_script("$('#{selector}')[0].selectize.addItem('#{item_value}')")
    end

    def selectize_remove_item(selector, item_value)
      page.execute_script("$('#{selector}')[0].selectize.removeItem('#{item_value}')")
    end
  end
end
