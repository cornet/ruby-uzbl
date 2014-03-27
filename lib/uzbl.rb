require "uzbl/version"
require 'uzbl/window'

module Uzbl
  def self.find_windows
    WMCtrl.instance.windows(:wm_class => /^uzbl-core.Uzbl-core$/).map do |window|
      Uzbl::Window.new window
    end
  end

  def self.create(url)
    pid = Process.spawn("uzbl #{url}")
    sleep 1
    Uzbl::Window.new WMCtrl.instance.windows(:pid => pid).first
  end
end
