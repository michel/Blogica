include MongoMapper
if ENV['MONGOHQ_URL']
  MongoMapper.config = {RAILS_ENV => {'uri' => ENV['MONGOHQ_URL']}} 
  MongoMapper.connect(RAILS_ENV)  
else
  db_config = YAML::load(File.read(File.join(Rails.root, "/config/mongodb.yml")))
  if db_config[Rails.env] && db_config[Rails.env]['adapter'] == 'mongodb'
    mongo = db_config[Rails.env]
    MongoMapper.connection = Mongo::Connection.new(mongo['host'] || 'localhost',
                                                   mongo['port'] || 27017,
                                                  :logger => Rails.logger)
    MongoMapper.database = mongo['database']
  
    if mongo['username'] && mongo['password']
      MongoMapper.database.authenticate(mongo['username'], mongo['password'])
    end
  end
  if defined?(PhusionPassenger)
     PhusionPassenger.on_event(:starting_worker_process) do |forked|
       MongoMapper.connection.connect_to_master if forked
     end
  end
end

