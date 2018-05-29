# winemap-data-loader
Creates a postgresql container on OpenShift and then loads wine review data from a data loader image as a kubernetes [job](http://kubernetesbyexample.com/jobs/)


```sh
oc cluster up

oc new-project winemap

oc new-app --template=postgresql-ephemeral \
-p POSTGRESQL_USER=username \
-p POSTGRESQL_PASSWORD=password \
-p POSTGRESQL_DATABASE=wineDb
```

```sh
oc create -f https://github.com/radanalyticsio/winemap-data-loader/blob/master/wine-data-loader.yaml

oc create -f https://github.com/radanalyticsio/winemap-data-loader/blob/master/secret.yaml

oc new-app --template=wine-data-loader
```
