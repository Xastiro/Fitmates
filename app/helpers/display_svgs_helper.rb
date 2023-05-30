module DisplaySvgsHelper
  def show_svg(path, _options = {})
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
