# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_census_session',
  :secret      => '8ca0170eabc9d9424829bf0d416ec39042941faa832005a0e999f52696d7b4d892fbfb15495e762ff2cddc31271c73866c513928748bc7c2f6e708ae86a2c75b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
