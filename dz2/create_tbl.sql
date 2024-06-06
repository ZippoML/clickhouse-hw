CREATE database if not exists testdb;
 
USE testdb;

drop table if exists winemag;

create table winemag (
 	id BigInt PRIMARY KEY,
    country String,
    description String,
    title String,
    points UInt8,
    price Float64,
    province String,
    region_1 String,
    region_2 String,
    taster_name String,
    taster_twitter_handle String,
    designation String,
    winery String,
    variety String
) Engine = MergeTree();
