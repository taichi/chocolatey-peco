chocolatey-peco
===============

## Maintenance

When a new version is released,

* modify version of peco.nuspec
* run below

```
choco pack peco.nuspec
cpush peco.[current version].nupkg
```


## if you don't have Chocolatey account
* Get a Chocolatey account:
    * http://chocolatey.org/account/Register
* please say [@taichi](https://twitter.com/ryushi) to add maintainer
* Copy the API key from your Chocolatey account.

```
cinst nuget.commandline
nuget SetApiKey [API_KEY_HERE] -source http://chocolatey.org/
```
