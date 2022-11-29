# data-platform-payment-requisition-zenginkyo-sql 
data-platform-payment-requisition-zenginkyo-sqlは、データ連携基盤において全銀協規定フォーマットの支払依頼データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 全銀協規定フォーマットとは
全銀協規定フォーマットとは、全国銀行協会連合会がデータ伝送を行うために定められたフォーマットです。
当該組合法人インターネットバンキング総合・給与・賞与振込で、外部データから振込データを取込む際に用いられます。

## 前提条件  
data-platform-payment-requisition-zenginkyo-sqlは、データ連携にあたり、API を利用します。  
https://api.XXXXX.com/api/XXXXX/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル
data-platform-payment-requisition-zenginkyo-sqlには、sqlの設定ファイルとして以下のsqlファイルが含まれています。

* data-platform-payment-requisition-zenginkyo-sql-header-record-data.sql （データ連携基盤 全銀協支払依頼 - ヘッダレコードデータ）
* data-platform-payment-requisition-zenginkyo-sql-data-record-data.sql （データ連携基盤 全銀協支払依頼 - データレコードデータ）
* data-platform-payment-requisition-zenginkyo-sql-trailer-record-data.sql（データ連携基盤 全銀協支払依頼 - トレーラーレコードデータ）  
* data-platform-payment-requisition-zenginkyo-sql-end-record-data.sql（データ連携基盤 全銀協支払依頼 - エンドレコードデータ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
