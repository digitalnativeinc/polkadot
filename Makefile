.PHONY: init
init:
	./scripts/init.sh

.PHONY: format
format:
	SKIP_WASM_BUILD=1 cargo fmt --all

.PHONY: ci-format
ci-format:
	SKIP_WASM_BUILD=1 cargo fmt --all -- --check

.PHONY: check
check:
	SKIP_WASM_BUILD=1 cargo check

.PHONY: test
test:
	SKIP_WASM_BUILD=1 cargo test --all

.PHONY: build
build:
	cargo build --release

.PHONY: build-polkadot
polkadot:
	cargo build --release --bin polkadot
