require 'rubygems'
require 'mongo_mapper'

MongoMapper.database = "dicom"

class Person 
include MongoMapper::Document
key :first_name, String
key :last_name, String
end
person = Person.new(:first_name => "FirstNameHere", :last_name => "LastNameHere")
person.save
