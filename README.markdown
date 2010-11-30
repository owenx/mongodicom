#mongoDICOM#


##DICOM object loader to mongodb using Ruby DICOM##


**Requirements**

* ImageMagick
* Ruby v. 1.9.2
* Gems: mongo_mapper, dicom v. 0.8, narray, iconv, pony

**Note**

* The DICOM files could be uncompressed

**Instructions**

* If you do not have ImageMagick and you are a MAC user we recommended you install it via Homebrew (http://mxcl.github.com/homebrew/)
* Install the Gems required: gem install mongo_mapper dicom v. 0.8 narray iconv pony
* If you want to create the DICOM Documents with the pixeldata as attachment run the script cdicom_attach_dicom-mongo.rb. If you just want to insert the metada DICOM run the script cdicom-noattach-nobulk-mongo.rb
* Update the variable DB with the Database name of the mongoDB database 
* Update the variable DIRS with the DICOM directory path to scan
* Run the selected Ruby Script: ruby cdicom-noattach-nobulk-mongo.rb

**Query Mongo**

Check out your collections
> show collections
dicomdocs
people
system.indexes

Dump all the Records
> db.dicomdocs.find()

Find a Tag that matches a value
(Select all from dicomdocs where tag 00081050 = 'CV')
> db.dicomdocs.find({t00081050:"CV"}).forEach(printjson);

Count the number of documents
> db.dicomdocs.find().count()

forked from simonmd/couchdicom