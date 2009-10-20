scenario :empty do
  User.create(:name => "Test User", :email_address => "test@example.com", :password => "test", :administrator => true)
end
