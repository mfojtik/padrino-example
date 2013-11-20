Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure

# OpenShift database configuration:
#
database_config = {
  adapter: 'postgres',
  host: ENV['OPENSHIFT_POSTGRESQL_DB_HOST'],
  database: ENV['OPENSHIFT_APP_NAME'],
  user: ENV['OPENSHIFT_POSTGRESQL_DB_USERNAME'],
  password: ENV['OPENSHIFT_POSTGRESQL_DB_PASSWORD']
}

Sequel::Model.db = case Padrino.env
  # TODO: Change this to your local PostgreSQL server:
  when :development then Sequel.connect('postgres://localhost/padrino_application_dev', :loggers => [logger])
  when :test        then Sequel.connect("postgres://localhost/padrino_application_test",:loggers => [logger])

  # NOTE: Do not change these settings:
  when :production  then Sequel.connect(database_config,  :loggers => [logger])
end
