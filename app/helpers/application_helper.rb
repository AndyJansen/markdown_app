module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)
    return markdown.render(text).html_safe
  end
end
