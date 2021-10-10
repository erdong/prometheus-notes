# K8S 中的 Grafana 数据持久化

自从将 Grafana 部署到 K8S 中以后，带来了很多的便利性，但是也有一个问题一直困扰着我，那就是 Grafana 中的数据无法持久化，经常配置好的 Datasource 和 Dashboards 在运行一段时间后就丢失了，有时候刚要排查问题，结果什么都找不到了。我们都知道，Grafana 在启动后，数据会存储到数据库中，包括 datasource 的配置，Dashboards 的配置。要解决 Grafana 的数据持久化可以从 2 个方面来进行思考并且解决。

方案一：

Grafana 数据存储在数据库中，当前支持 MySQL 、sqlite3、Postgres 这三个，缺省情况下，Grafana 会在本地启动一个 Sqlite3 来存储数据，你也可以在 grafana.ini 配置文件中修改这个配置来切换数据库。

基于这个方式，第一种方案出来了。 当 Grafana 运行在 K8S 中时，数据库不使用自动启动的 Sqlite3 ，在 K8S 外启动一个关系数据库（可以是 MySQL 、sqlite3、Postgres 中的任何一个），修改 grafana.ini 文件，使得 Grafana 在启动时连接外部的数据库，这样数据就不会丢失了。

方案二：

Grafana 在 v5.0 之后引入了 provisioning 功能，可以将 Datasource 、Dashboards 这些内容，通过配置文件的方式在 Grafana 启动的时候加载。把这些文件放在 K8S 的配置映射中，然后挂载到 Grafana 容器中的指定路径即可。这样配置后在 Web UI 修改已经不会生效，只有在对应的配置文件中修改才会生效。

接下里我们看看方案二的怎么配置使用，我使用的 Grafana 版本是 v6.4.3。

首先需要在 Grafana 启动时添加相应的参数来打开 provisioning 功能，官方提供的 docker 镜像已经将该功能打开，缺省的路径是 `/etc/grafana/provisioning` ,这个路径下有 dashboards、datasources、notifiers 三个文件夹，相关的配置会放在这里。如果是自己构建的镜像，请参考文档或者官方的 dockerfile 把该功能打开。

其次我们需要解决数据源的持久化问题，我们准备 datasources.yaml 文件，用来配置数据源。datasources.yaml 文件内容如下：

```
# config file version
apiVersion: 1

# list of datasources that should be deleted from the database
deleteDatasources:
  - name: Prometheus
    orgId: 1

# list of datasources to insert/update depending
# what's available in the database
datasources:
  # <string, required> name of the datasource. Required
  - name: Prometheus
    # <string, required> datasource type. Required
    type: prometheus
    # <string, required> access mode. proxy or direct (Server or Browser in the UI). Required
    access: proxy
    # <int> org id. will default to orgId 1 if not specified
    orgId: 1
    # <string> custom UID which can be used to reference this datasource in other parts of the configuration, if not specified will be generated automatically
    uid: my_unique_uid
    # <string> url
    url: http://127.0.0.1:9090
    # <string> Deprecated, use secureJsonData.password
    password:
    # <string> database user, if used
    user:
    # <string> database name, if used
    database:
    # <bool> enable/disable basic auth
    basicAuth:
    # <string> basic auth username
    basicAuthUser:
    # <string> Deprecated, use secureJsonData.basicAuthPassword
    basicAuthPassword:
    # <bool> enable/disable with credentials headers
    withCredentials:
    # <bool> mark as default datasource. Max one per org
    isDefault:
    # <map> fields that will be converted to json and stored in jsonData
    jsonData:
      graphiteVersion: '1.1'
      tlsAuth: false
      tlsAuthWithCACert: false
    # <string> json object of data that will be encrypted.
    secureJsonData:
      tlsCACert: '...'
      tlsClientCert: '...'
      tlsClientKey: '...'
      # <string> database password, if used
      password:
      # <string> basic auth password
      basicAuthPassword:
    version: 1
    # <bool> allow users to edit datasources from the UI.
    editable: false
```

将该文件放在 K8S 的 config map 中，在容器中时添加数据卷，卷类型选`配置映射卷` ，选择 config map 中的 datasources.yaml 挂载到容器的 `/etc/grafana/provisioning/datasources` ,然后重启容器，让容器重新加载配置。

使用后在 Web UI 的数据源页面进行修改会提示 `This datasource was added by config and cannot be modified using the UI. Please contact your server admin to update this datasource. ` 表示数据源的配置，在 Web UI 修改已经不会生效，只有在 datasources.yaml 文件中修改才会生效。

接下来解决 dashboards 的持久化问题，准备 `dashboards.yaml` 文件，用来指定之后的 dashboards 的 json 文件放在哪个目录。

```
apiVersion: 1

providers:
  # <string> an unique provider name. Required
  - name: 'a unique provider name'
    # <int> Org id. Default to 1
    orgId: 1
    # <string> name of the dashboard folder.
    folder: ''
    # <string> folder UID. will be automatically generated if not specified
    folderUid: ''
    # <string> provider type. Default to 'file'
    type: file
    # <bool> disable dashboard deletion
    disableDeletion: false
    # <bool> enable dashboard editing
    editable: true
    # <int> how often Grafana will scan for changed dashboards
    updateIntervalSeconds: 10
    # <bool> allow updating provisioned dashboards from the UI
    allowUiUpdates: false
    options:
      # <string, required> path to dashboard files on disk. Required when using the 'file' type
      path: /etc/grafana/dashboards-files
```

将该文件放在 K8S 的 config map 中，在容器中时添加数据卷，卷类型选`配置映射卷` ，选择 config map 中的 dashboards.yaml 挂载到容器的 `/etc/grafana/provisioning/dashboards` ,然后重启容器，让容器重新加载配置。

接下来将准备好的 json 格式的 Dashboards 文件放到 `/etc/grafana/dashboards-files`,  重新加载这些 json 文件即可。

# 参考链接：

* https://grafana.com/docs/grafana/latest/administration/provisioning/#provisioning-grafana , By Provisioning Grafanan
