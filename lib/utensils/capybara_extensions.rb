identifier = defined?(ActionView::RecordIdentifier) ? ActionView::RecordIdentifier : ActionController::RecordIdentifier
Capybara.add_selector :record do
  xpath { |record| XPath.css("#" + identifier.dom_id(record)) }
  match { |record| record.is_a?(ActiveRecord::Base) }
end

Capybara.add_selector(:role) do
  css { |role| %([data-role="#{role}"]) }
end
