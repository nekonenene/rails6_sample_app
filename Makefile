.PHONY: run
run:
	bundle exec rails server

.PHONY: test
test:
	bundle exec rails test

.PHONY: db_apply
db_apply:
	bundle exec ridgepole --config config/database.yml --file db/Schemafile.rb --apply
	bundle exec rails db:schema:dump

.PHONY: db_dry_run
db_dry_run:
	bundle exec ridgepole --config config/database.yml --file db/Schemafile.rb --apply --dry-run
