# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Flickr_session',
  :secret      => '935b00b0b6eee366db128c3cb61ed73a25efff4b7cb62fc494855a9c23171322504910d841587934a2831bb1882bea757e9f4426c3ce04a99b07e1b7486503bd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
