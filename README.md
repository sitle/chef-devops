# Devops cookbook

Ce cookbook installe et configure un serveur web qui centralise plusieurs choses :

* Les paquets chef-server en production pour les distributions Ubuntu, Debian et Redhat like
* Les paquets chef-client en production pour les distributions Linux usuelles et Windows
* Les différents systèmes utilisés en développement via VAGRANT (.box)
* Les fichiers preseed utilisés en production
* Les fichiers kickstart utilisés en production
* Certains softwares :
  * Les paquets virtualbox pour Ubuntu, Windows, Debian et MacOSX
  * Les paquets chefdk pour Ubuntu, Windows, Debian et MacOSX
* Les repositories pour les distributions :
  * RedHat Linux Enterprise 5
  * Oracle Linux Enterprise 6
  * Centos 6

## Plateformes supportées

* Debian 7 only.

## Attributs

Les attributs suivants fixent les noms des virtualhosts :

* default['devops']['chef_domain'] = 'chef.repository.dev'
* default['devops']['vagrant_domain'] = 'vagrant.repository.dev'
* default['devops']['software_domain'] = 'software.repository.dev'
* default['devops']['preseed_domain'] = 'preseed.repository.dev'
* default['devops']['kickstart_domain'] = 'kickstart.repository.dev'
* default['devops']['yum_rhel_domain'] = 'yum.rhel.repository.dev'
* default['devops']['yum_oel_domain'] = 'yum.oel.repository.dev'
* default['devops']['yum_centos_domain'] = 'yum.centos.repository.dev'

## Utilisation

### devops::default

Inclure `devops` dans la `run_list` de votre noeud :

```json
{
  "run_list": [
    "recipe[devops::default]"
  ]
}
```

## License

```
Copyright 2015 Léonard TAVAE

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

Auteurs :

* Léonard TAVAE (<leonard.tavae@informatique.gov.pf>)