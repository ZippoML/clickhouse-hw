clickhouse-client -h 127.0.0.1 -u default --format_csv_delimiter="," --query "insert into testdb.winemag FORMAT CSVWithNames" < winemag-data-130k-v2.csv
