module DeviseDemo
  module ApplicationHelper
    def header(text)
      content_for(:header) { text.to_s }
    end
  end
end
