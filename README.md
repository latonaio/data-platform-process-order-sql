# data-platform-process-order-sql

data-platform-process-order-sql は、データ連携基盤において、プロセス指図データを維持管理するSQLテーブルを作成するためのレポジトリです。 

## 前提条件  
data-platform-process-order-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sqlの設定ファイル

data-platform-process-order-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-process-order-sql-header-data.sql（データ連携基盤 プロセス指図 - ヘッダデータ）
* data-platform-process-order-sql-header-doc-data.sql（データ連携基盤 プロセス指図 - ヘッダ文書データ）
* data-platform-process-order-sql-operation-data.sql（データ連携基盤 プロセス指図 - 作業データ）
* data-platform-process-order-sql-master-recipe-product-assignment-data.sql（データ連携基盤 マスタレシピ - 品目割当データ）
* data-platform-process-order-sql-master-recipe-food-working-parameters-data.sql(データ連携基盤 マスタレシピ - 食品パラメータデータ)


## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
