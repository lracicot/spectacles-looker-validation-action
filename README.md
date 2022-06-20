# Spectacles looker validation action

This action can run [spectacles validators](https://docs.spectacles.dev/cli/tutorials/validators) against a Looker instance.

## Environment variables

| Name                 | Description              |
|----------------------|--------------------------|
| LOOKER_BASE_URL      | The URL or the instance  |
| LOOKER_CLIENT_ID     | API3 client_id           |
| LOOKER_CLIENT_SECRET | API3 client_secret       |

## Inputs

## `validator`

**Required** The name of the validator to run. Possible values: `sql`, `content`, `assert` or `lookml`.

## Outputs

None

## Example usage

```
on:
  pull_request:
    paths:
      - '**.lkml'

jobs:
  validate-lookml:
    runs-on: ubuntu-latest
    steps:
      - uses: lracicot/spectacles-looker-validation-action@v1
        env:
          LOOKER_BASE_URL: https://my-instance.cloud.looker.com
          LOOKER_CLIENT_ID: ${{ secrets.LOOKER_CLIENT_ID }}
          LOOKER_CLIENT_SECRET: ${{ secrets.LOOKER_CLIENT_SECRET }}
        with:
          validator: lookml
          lookml_project: my-project
          branch: ${{ github.head_ref }}

```