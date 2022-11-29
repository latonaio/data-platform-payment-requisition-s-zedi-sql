CREATE TABLE `data_platform_payment_requisition_zenginkyo_data_record_data`
(
  `Payer`                                  int(12) NOT NULL,
  `PayerPaymentDate`                       date NOT NULL,
  `PayerPaymentRequisitionID`              int(6) NOT NULL,
  `PayerPaymentRequisitionItem`            int(6) NOT NULL,
  `Payee`                                  int(12) NOT NULL,
  `RecordType`                             varchar(1) NOT NULL,        -- "2"            データ区分  
  `BussinesType`                           varchar(2) NOT NULL,        -- "21"           業務種別       
  `CharacterType`                          varchar(1) NOT NULL,        -- "0"            文字コード種類
  `ConsignorCode`                          varchar(10) NOT NULL,       -- "0110999999"   委託者コード
  `DesignatedTransferDate`                 varchar(4) NOT NULL,        -- "0831"         振込指定日
  `AssociationFinancialInstitutionNumber`  varchar(4) NOT NULL,        -- "2606"         当組合金融機関番号
  `AssociationBranchCodeNumber`            varchar(3) NOT NULL,        -- "010"          当組合支店コード番号
  `DepositItem`                            varchar(1) NOT NULL,        -- "1"            預金種目(依頼人)
  `AccountNumber`                          varchar(7) NOT NULL,        -- "1234567"      口座番号(依頼人)   
  `PayeeFinancialInstitutionCode`          varchar(4) NOT NULL,        -- "0001"          振込先金融機関コード
  `PayeeSalesOfficeCode`                   varchar(3) NOT NULL,        -- "001"          振込先金融機関営業支店コード
  `DepositItem`                            varchar(1) NOT NULL,        -- "1"            預金種目
  `PayeeName`                              varchar(30) NOT NULL,       -- "Satou Hajime" 受取人名
  `ClearinghouseNumber`                    varchar(4) DEFAULT NULL,    --                手形交換所番号
  `TransferAmountOfMoney`                  varchar(10) DEFAULT NULL,   -- "100000"       振込金額
  `NewCode`                                varchar(1) DEFAULT NULL,    --                新規コード
  `ClientCode1`                            varchar(10) DEFAULT NULL,   --                依頼人が定めた受取人識別の為の顧客コード情報
  `ClientCode2`                            varchar(10) DEFAULT NULL,   --                同上
  `EDIInformation`                         varchar(20) DEFAULT NULL,   --                依頼人から受取人に対して通知するEDI情報
  `TransferCategory`                       varchar(1) DEFAULT NULL,    --                振込区分
  `Identification`                         varchar(1) DEFAULT NULL,    -- "Y"            識別表示
  `Dummy`                                  varchar(7) DEFAULT NULL,    --                未使用

    PRIMARY KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),

    CONSTRAINT `DataPlatformPaymentRequisitionZenginkyoDataRecordData_fk` FOREIGN KEY (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`) REFERENCES `data_platform_payment_requisition_zenginkyo_header_record_data` (`Payer`, `PayerPaymentDate`, `PayerPaymentRequisitionID`),
    CONSTRAINT `DataPlatformPaymentRequisitionZenginkyoDataRecordDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
