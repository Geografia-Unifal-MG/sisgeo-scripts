# restart-container

Este é um script para reiniciar o serviço Geoserver no Docker e os containers relacionados a ele.

O ideal é configurar um cronjob para que esse script seja executado de tempos em tempos.

Exemplo do arquivo de saída:

```
22-02-22 23:58:01: geoserver alive
22-02-22 23:56:01: geoserver dead, updating geoserver...
22-02-22 23:54:01: geoserver alive
```

Quando o script é executado muitas vezes durante um dia, o arquivo de log pode ficar muito grande. Por isso, o nome do arquivo de log contém a data que ele foi gerado. Ex:

```
restart-container-22-02-22.out
restart-container-22-02-23.out
```

> OBS: este é um script genérico e pode ser usado pra reiniciar qualquer serviço do Docker.