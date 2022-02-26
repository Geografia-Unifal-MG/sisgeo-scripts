# mongodb-import-export

Script para importar e exportar dados de/para o mongodb.

## Requisitos

Ter o mongodb instalado na máquina.

## Utilização

No arquivo <b>mongodb-import-export.sh</b>, edite as variáveis <b>import_host</b> e <b>export_host</b> para a <b>url:porta</b> que o mongodb está rodando. Tanto para os commandos de importação quanto exportação, deve existir um diretório ```bkp-collections```.

## Importação

Importa dados de ```bkp-collections``` para o mongo:

```sh
./mongodb-businessapi.sh import
```

## Exportação

Exporta dados do mongo para o diretório ```bkp-collections```:

```sh
./mongodb-businessapi.sh export
```

> Para ter detalhes sobre o significado de cada collection, acesse a documentação da [Business API](https://github.com/Geografia-Unifal-MG/sisgeo-docs/tree/main/business-api).
