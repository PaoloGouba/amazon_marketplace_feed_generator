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




# Transformer Specs

## Context

Amazon SP API need a specific XML strucutre to send products. You can see Amazon specifications [here.](https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/XML_Documentation_Intl.pdf)


The XML structure need by Amazon can be rappresented by this : 

Catalog
- Message <>
  - Header <>
  - Message info <>
  - Product <>
    - ID Data (List Of fields, generic for all product types)
    - Description Data <>
    - ProductData <>
      - ProductType <>
        - Product Type Fields
    - ID Data (List Of fields, generic for all product types)



## XSL Transformer structure 

## MAIN file

- Import common templates, DescriptionData template and ProductData Gataway
- Create Structre
- Call templates


## Common templates 


## DescriptionData Template

- Description Data
- Description Data ASIN


## ProductData Module

The main fonction of this module, is to decide which ProductData use. 

Each univers has more XSL modules. The main XSL of a unvers mudule, will choose the product type, then will apply the right XSLT depending of the product type

NB: in this version we manage booth old an new version. 





