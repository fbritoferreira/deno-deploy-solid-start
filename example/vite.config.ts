import solid from "solid-start/vite";
import solidDeno from 'solid-start-deno';
import { defineConfig } from "vite";

export default defineConfig({
  plugins: [solid({
    adapter: solidDeno({}),
  })],
});
