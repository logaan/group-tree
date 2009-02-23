# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_group_tree_session',
  :secret      => '0b442f11a8412a4d514a1db0bb12219c7a83b85c0447dc812c1c23f3d941059cff523d072bc959f7010373465bd231846ce6f121c07f45483372ffd249b67b53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
