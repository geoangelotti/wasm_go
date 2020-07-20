all: build


build: src/wasm/main.go
	GOOS=js GOARCH=wasm go build -o assets/json.wasm src/wasm/main.go

run: src/server/main.go build
	go run src/server/main.go
