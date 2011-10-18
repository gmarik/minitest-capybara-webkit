require 'rake/testtask'

Rake::TestTask.new(:spec) do |t|
  t.libs.push "test"
  t.test_files = FileList['test/**/*_spec.rb']
end

namespace :webkit do
  desc "helper task to build Qt-WebKit"
  task 'install' => 'build'

  task 'build' do
    case uname = `uname`
    when /Darwin/ then system %`brew update && brew install qt`
    when /Linux/  then system %`apt-get install libqt4-dev `
    else
      fail "Unexpected platform #{uname}"
    end
  end
end
