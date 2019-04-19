module MessagesHelper
  def markdown_to_html text
    Kramdown::Document.new(text).to_html
  end
end
