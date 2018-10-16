build:
	go build

run:
	./spanner-cli --project=${PROJECT} --instance=${INSTANCE} --database=${DATABASE}

test:
	@SPANNER_CLI_INTEGRATION_TEST_PROJECT_ID=${PROJECT} SPANNER_CLI_INTEGRATION_TEST_INSTANCE_ID=${INSTANCE} SPANNER_CLI_INTEGRATION_TEST_DATABASE_ID=${DATABASE} SPANNER_CLI_INTEGRATION_TEST_CREDENTIAL=${CREDENTIAL} go test -v ./...
