# Clinical Safety Platform

This is a proof of concept, 'Minimum Viable Product' Clinical Safety Platform for Clinical Safety Officers, primarily within the UK NHS and at related system suppliers.

This POC is built using Rails 7 and Bootstrap

## Development setup

We recommend the use of `rbenv` to manage Ruby version and gemsets. Gemsets help you to manage the need for different versions of gems (Ruby libraries) to be available on the same machine for different projects. Install `rbenv` [here](https://github.com/rbenv/rbenv) and the `rbenv-gemset` plugin from [here](https://github.com/jf/rbenv-gemset)

(There are other approaches to managing dependencies and Ruby versions aside from `rbenv`, so if you have experience with other methods, please feel free to use those, however you should be aware that if you do this, we may be unable to support you if you encounter problems)

### Environment installation

Install the correct Ruby version (latest stable at the time of starting the project, will be updated periodically)

```shell
rbenv install 3.0.2
```

Install all the dependencies

```shell
bundle install
```

## Copyright

This project, all code and any other intellectual property related to it are Copyright ⓒ 2022 Public Money Public Code CIC. The work is open source licensed as below.

## License

Affero GNU Public License (see LICENSE.md)
