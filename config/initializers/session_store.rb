# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bug480_session',
  :secret      => '3941981743e0096105207eead33c8c86d96d354ee1cd4253b19f27b7c57fd68524c901609c1175eac9c0c8de50442cea25e40d2e4bff221c0f901621d846c4f4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
