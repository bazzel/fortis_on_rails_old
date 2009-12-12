# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fortis_on_rails_session',
  :secret      => '23251b5f4a65a4200c200ebf76b08f32759e1b71842328ab77764885aaceece79e5d78a0f008519529b4481596ccd73bbcf2ee6ec5c1227ca16ff91ec51b1488'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
