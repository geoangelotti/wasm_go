GOOS=js
GOARCH=wasm

IN=src/wasm
OUT=assets

all: build


build: src/wasm/main.go
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -o $(OUT)/json.asm $(IN)/main.go
