build:
	cargo build --target wasm32-unknown-unknown --release
	wasm-pack build --target web --out-dir www/pkg

start:
	make build && cd www && npm run dev

watch:
	cargo watch -i .gitignore -i "www/pkg/*" -s "make build"
