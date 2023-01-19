import init, {start} from "./pkg/wasm_webgl.js";

(async () => {
  await init();
  start()
})();
