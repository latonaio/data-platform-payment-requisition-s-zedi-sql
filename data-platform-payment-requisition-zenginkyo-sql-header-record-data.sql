CREATE TABLE `data_platform_payment_requisition_zenginkyo_header_record_data`
(
  `Payer`                                  int(12) NOT NULL,
  `PayerPaymentDate`                       date NOT NULL,
  `PayerPaymentRequisitionID`              int(6) NOT NULL,
  `RecordType`                             varchar(1) NOT NULL,         -- "1"                 データ区分
  `BussinesType`                           varchar(2) NOT NULL,         -- "21"                業務種別       
  `CharacterType`                          varchar(1) NOT NULL,         -- "0"                 文字コード種類
  `ConsignorCode`                          varchar(10) NOT NULL,        -- "0110999999"        委託者コード
  `DesignatedTransferDate`                 varchar(4) NOT NULL,         -- "MMDD"              振込指定日
  `AssociationFinancialInstitutionNumber`  varchar(4) NOT NULL,         -- "2606"              当組合金融機関番号
  `AssociationBranchCodeNumber`            varchar(3) NOT NULL,         -- "010"               当組合支店コード番号
  `DepositItem`                            varchar(1) NOT NULL,         -- "1"                 預金種目(依頼人)
  `AccountNumber`                          varchar(7) NOT NULL,         -- "1234567"           口座番号(依頼人)
  `ConsignorName`                          varchar(40) DEFAULT NULL,    -- "Yamada Tarou"      振込元の委託者名
  `UnionName`                              varchar(15) DEFAULT NULL,    -- "◯◯◯組合"         当組合名称
  `BranchName`                             varchar(15) DEFAULT NULL,    -- "◯◯支店"           当組合支店名称
  `Dummy`                                  varchar(17) DEFAULT NULL,    --                     ダミー 

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),

    CONSTRAINT `DataPlatformPaymentRequisitionZenginkyoHeaderRecordDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
 
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
