DB_CACHE = YAML::load(ERB.new(File.read(Rails.root.join("config","test_database.yml"))).result)[Rails.env] 
