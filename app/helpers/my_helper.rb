module MyHelper
  def show_svg(path)
    File.open("app/assets/images/icons/#{path}", "rb") do |file|
        raw file.read
    end
  end
end