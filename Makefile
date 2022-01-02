# this target assumes you've already gone through the setup instructions for the SQL with Python course
.PHONY: northwind
northwind:
		docker run --network=nunet --rm -v `pwd`/$@:/output schemaspy/schemaspy:snapshot -t pgsql -host pg --port 5432 -u postgres -db northwind
