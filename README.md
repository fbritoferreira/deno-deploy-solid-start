# Deno Deploy Solid Start

This action prints setups all you need to deploy your solid start app to deno deploy.

Requirements:
- Deno Deploy Account
- Solid Start app with deno adapter [instructions here](https://github.com/solidjs/solid-start/tree/main/packages/start-deno)
- Create a deploy command in your package.json (e.g `cd dist && deployctl deploy --prod --project=<YOUR_PROJECT_NAME> --token <YOUR_DENO_DEPLOY_TOKEN> ./index.js"`)


## Inputs
 - `project`: The path of your project, this enables monorepo suport. Default `.`.
 - `token`: **Required** The token of your deno deploy account.
 - `build`: Wether to build your app before deploying. Expected command `yarn build`. Default `true`.
 - `deploy`: Wether to deploy your app to deno deploy. Expected command `yarn deploy`. Default `true`.
 - `install`: Wether to run `yarn install`. Default `true`.

## Example usage
```yaml

env:
  DENO_DEPLOY_TOKEN: ${{ secrets.DENO_DEPLOY_TOKEN }}

uses: fbritoferreira/deno-deploy-solid-start@v1
with:
  token: ${{ secrets.DENO_DEPLOY_TOKEN }}
  project: ./packages/my-app
  build: true
  deploy: true
  install: true
```