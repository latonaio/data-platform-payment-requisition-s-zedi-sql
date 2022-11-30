# data-platform-payment-requisition-s-zedi-sql 
data-platform-payment-requisition-s-zedi-sqlは、データ連携基盤においてS-ZEDIフォーマットの支払依頼データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## ZEDIとは
ZEDI（全銀EDIシステム）とは、支払企業から受け取り企業に総合振込を行う際に、EDI情報を添付できるようにするシステムです。
総合振込のデータ形式がXML形式に移項したことにより、より多くの情報を設定でき、企業の資金決済事務の合理化が可能になります。

## 前提条件  
data-platform-payment-requisition-s-zedi-sqlは、データ連携にあたり、API を利用します。  
https://api.XXXXX.com/api/XXXXX/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル
data-platform-payment-requisition-s-zedi-sqlには、sqlの設定ファイルとして以下のsqlファイルが含まれています。

* data-platform-payment-requisition-s-zedi-sql-s-zedi-data.sql （データ連携基盤 支払依頼 S-ZEDI - S-ZEDIデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
