Redmine::Plugin.register :weekly do
  name 'Weekly plugin'
  author 'kimhwawoon'
  description 'weekly plugin'
  version '0.0.1'
  author_url 'http://qeegou.com/about'
  menu :top_menu, :weekly, { :controller => 'weekly', :action => 'index' }, :caption => '周报'
end
