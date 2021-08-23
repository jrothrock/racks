require "racks"
$LOAD_PATH << File.join(File.dirname(__FILE__),
 "..", "app",
 "controllers")

require "items_controller"

module TodoList
  class Application < Racks::Application
  end
end