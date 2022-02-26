# docker-container-prune

Este é um script que remove todos os containers do Docker que estão parados e registra a saída em um arquivo de log.

O ideal é configurar um cronjob para que esse script seja executado de tempos em tempos.

Exemplo do arquivo de saída:

```
22-02-23 22:35:01
Total reclaimed space: 0B

22-02-23 22:34:01
Deleted Containers:
4a7f7eebae0f63178aff7eb0aa39cd3f0627a203ab2df258c1a00b456cf20063
f98f9c2aa1eaf727e4ec9c0283bc7d4aa4762fbdba7f26191f26c97f64090360

Total reclaimed space: 212 B
```

Quando o script é executado muitas vezes durante um dia, o arquivo de log pode ficar muito grande. Por isso, o nome do arquivo de log contém a data que ele foi gerado. Ex:

```
container-prune-22-02-18.out
container-prune-22-02-19.out
```
