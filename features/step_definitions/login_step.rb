Given 'user has a "$account" account' do |account|
  @account = account
end

When 'he logs in' do
  login(@account)
end

Then 'he sees "$msg"' do |msg|
  within "#flashes" do
    page.must_be :has_content?, msg
  end
end
