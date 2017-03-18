module CapybaraJsHelpers
  module SweetAlertHelper
    def sweet_alert_ok
      within ".sweet-alert.visible" do
        expect(page).to have_css('.sweet-alert button.confirm', :count => 1)
        find('button.confirm').trigger("click")
      end
    end
  end
end

