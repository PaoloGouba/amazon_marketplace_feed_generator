# Amazon SP Product Feed Generator


## Overview & Features
This program is an ETL that allows you to convert your catalog from a basic XML format to an XML format compatible with the latest techniques for creating catalogs via XML streams via the [Amazon SP API](https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/XML_Documentation_Intl.pdf).


## Requirements 

- Python 3 +


## Installation




## Execution

On Windows : 
```sh
python main.py
```


On MAC : 
```sh
python3 main.py
```


## How to use the software

## Use only the XSL Transformer

You can use this XML transformer developed entirely in XSL to be able to adapt your flat XML catalogs to the format compatible with Amazon SP.

How to use the transformer:
  - extract the 'xsl' folder from the project
  - insert the folder in your project
  - call the file src / main.xsl

## Generate XSL documents

In order to keep the list of product types updated, from this program you can run a script that will update the XSL transformer models for each Universe and ProductType without touching transformer core.




