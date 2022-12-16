build:
	swift build -c debug --triple wasm32-unknown-wasi

singularity: build
	fastly compute serve --skip-build --file ./.build/debug/Singularity.wasm
