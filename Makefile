.PHONY: run
run:
	bundle exec rails server

.PHONY: test
test:
	bundle exec rails db:migrate RAILS_ENV=test
	bundle exec rails test
	rm db/schema.rb

.PHONY: db_apply
db_apply:
	bundle exec ridgepole --config config/database.yml --file db/Schemafile.rb --apply

.PHONY: db_dry_run
db_dry_run:
	bundle exec ridgepole --config config/database.yml --file db/Schemafile.rb --apply --dry-run
