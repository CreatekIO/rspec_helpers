module CapybaraJsHelpers
  module SelectizeHelper
    def selectize_add_item(selector, item_value)
      selectize_exec(
        "addItem('%{item_value}')",
        selector: selector,
        item_value: item_value
      )
    end

    def selectize_remove_item(selector, item_value)
      selectize_exec(
        "removeItem('%{item_value}')",
        selector: selector,
        item_value: item_value
      )
    end

    def selectize_search(selector, search_term)
      selectize_exec(
        "onSearchChange('%{search_term}')",
        selector: selector,
        search_term: search_term
      )
      selectize_exec("open()", selector: selector)
    end

    def selectize_exec(command, **options)
      CapybaraJsHelpers.execute_script(
        "$('%{selector}')[0].selectize.#{command}",
        **options
      )
    end
  end
end
