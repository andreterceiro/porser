require File.dirname(__FILE__) + "/lib/porser"
require 'rake'

Dir["#{Porser.path.join('lib', 'porser', 'cli', 'components')}/*"].each do |component_path| 
  require(component_path)
end

include Porser::CLI

Dir["#{Porser.path.join('lib', 'tasks')}/*.rake"].each { |task_path| load(task_path) }