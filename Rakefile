namespace :webkit do
  task 'build' do
    case `uname`
    when /Darwin/ : ` brew update && brew install qt `
    when /Linux/  : ` apt-get install libqt4-dev `
    else
      error "Unknown platform #{`uname`}"
    end
  end

  task 'install' => 'build' do

  end
end
