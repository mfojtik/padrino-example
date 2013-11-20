# Padrino Example App on OpenShift #
Quickstart for [Padrino](http://www.padrinorb.com/) application for OpenShift.

The easiest way to install this application is to use the [OpenShift
Instant Application][template]. If you'd like to install it
manually, follow [these directions](#manual-installation).

## OpenShift Considerations ##
These are some special considerations you may need to keep in mind when
running your application on OpenShift.

### Database ###
Your application is configured to use your OpenShift database in
production mode.
This example is configured to use [Sequel](http://sequel.jeremyevans.net/) as
the ORM with <b>PostgreSQL</b> database on backend.

The `config/database.rb` file is modified to connect to the OpenShift PostgreSQL
database automatically without having any credentials written in this file.

For 'development' mode, you would need to change the database name.

To use different database, like MySQL or MongoDB, you will need to modify the
`config/database.rb` file.

### Example application ###
This example application comes with the `Example` application baked in.
When you visit the OpenShift application for the first time, you will see output
of the `example/controllers/hello.rb#index` action.

To remove the Example sub-application, you can run the following command:

```
$ padrino g app example -d
```

### Assets ###
This Padrino application comes with the [JQuery](http://jquery.com/) assets
baked in.

## Manual Installation ##

1. Create an account at http://openshift.redhat.com/

1. Create a Ruby application

    ```
    rhc app create -a padrinoapp -t ruby-1.9
    ```

1. Add database support to your application

    ```
    rhc cartridge add -a padrinoapp -c postgresql-9.2
    ```

1. Add this upstream Padrino quickstart repository

    ```
    cd railsapp
    git remote add upstream -m master git://github.com/mfojtik/padrino-example.git
    git pull -s recursive -X theirs upstream master
    ```

1. Push your new code

    ```
    git push
    ```

1. That's it! Enjoy your new Padrino application!


License
-------

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to CC0 (http://creativecommons.org/publicdomain/zero/1.0/)

