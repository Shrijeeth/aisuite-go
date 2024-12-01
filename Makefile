ifeq ($(OS),Windows_NT)
    # Windows
    RM := del /s /q
    MKDIR := mkdir
else
    # Linux/Unix
    RM := rm -rf
    MKDIR := mkdir -p
endif

setup:
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.53.1
	go install github.com/vektra/mockery/v2@v2.20.0

build: setup
	go mod tidy
	go mod vendor

lint:
	golangci-lint run

test:
	$(RM) coverage
	$(MKDIR) coverage
	go test -race ./... -count=1 -p 1 -covermode=atomic -coverprofile=coverage/coverage.out

test.cover: test
	go tool cover -func coverage/coverage.out

test.report: test.cover
	go tool cover -html coverage/coverage.out -o coverage/coverage.html