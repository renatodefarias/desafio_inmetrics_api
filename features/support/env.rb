require 'rspec'
require 'cucumber'
require 'httparty'
require 'faker'
require 'cpf_faker'
require 'pry'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/setup.yml")
DATA = YAML.load_file(File.dirname(__FILE__) + "/config/data.yml")

Dir[File.join(File.dirname(__FILE__),
   '../client/*.rb')].each { |file| require_relative file }