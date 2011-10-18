namespace :webkit do
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
