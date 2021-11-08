Nomad Levant Deploy
===================

Based off of [qazz92/nomad-deploy-action](https://github.com/qazz92/nomad-deploy-action)

This does deployments using Levant and Nomad.

Straightforward checkout then publish

```yaml
name: Deploy Nomad Job
on: [push]
jobs:
  deploy:
    name: Nomad Deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the code
        uses: actions/checkout@v1

      - name: Deploy with Nomad
        uses: getparthenon/levant-deploy@main
        with:
          token: ${{ secrets.NOMAD_TOKEN }}
          address: ${{ secrets.NOMAD_ADDR }}
          job: path/to/your/nomad/job/file
          config: path/to/your/levant/config/file
```

## Parameters

* `token`: passed as `-token=` to the `nomad job run` command ([see here how to get one](https://www.nomadproject.io/guides/security/acl.html#acl-tokens))
* `address`: public address of a nomad server (passed as `-address=`)
* `job`: path to the nomad job specification to run ([defined according to the spec here](https://www.nomadproject.io/docs/job-specification/index.html))
* `config`: path to the levant config file
