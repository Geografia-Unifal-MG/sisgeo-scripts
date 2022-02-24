# health-check

Este é um script para verificar se o Geoserver está respondendo. Ele faz uma requisição ao Geoserver e registra em um arquivo de log, se ele está respondendo ou não em determinado momento.

O ideal é configurar um cronjob para que esse script seja executado de tempos em tempos.

Exemplo do arquivo de saída:

```
22-02-15 21:59:02: geoserver alive
22-02-15 21:58:01: geoserver alive
22-02-15 21:57:01: geoserver dead
```

Quando o script é executado muitas vezes durante um dia, o arquivo de log pode ficar muito grande. Por isso, o nome do arquivo de log contém a data que ele foi gerado. Ex:

```
health-check-22-02-22.out
health-check-22-02-23.out
```

> OBS: este é um script genérico e pode ser usado pra verificar se algum outro serviço http está respondendo ou não.