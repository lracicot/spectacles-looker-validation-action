# Spectacles looker validation action

This action can run [spectacles validators](https://docs.spectacles.dev/cli/tutorials/validators) against a Looker instance.

## Environment variables

| Name                 | Description                                    |
|----------------------|------------------------------------------------|
| LOOKER_BASE_URL      | The URL or the instance (including `https://`) |
| LOOKER_CLIENT_ID     | API3 client_id                                 |
| LOOKER_CLIENT_SECRET | API3 client_secret                             |

## Inputs

## `validator`

**Required** The name of the validator to run. Possible values: `sql`, `content`, `assert` or `lookml`.

## Outputs

None

## Example usage

uses: lracicot/hello-world-docker-action@v1
with:
  who-to-greet: 'Mona the Octocat'