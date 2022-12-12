CREATE TABLE `data_platform_payment_requisition_s_zedi_s_zedi_data`
(
  `PayerPaymentRequisitionID`      int(16) NOT NULL,
  `PayerPaymentRequisitionItem`    int(6) NOT NULL,
  `Payer`                          int(12) NOT NULL,
  `PayerPaymentDate`               date NOT NULL,
  `Payee`                          int(12) NOT NULL,
  `BillFromParty`                  int(12) NOT NULL,
  `BillToParty`                    int(12) NOT NULL,
  `Buyer`                          int(12) NOT NULL,
  `Seller`                         int(12) NOT NULL,
  `SubsetSpecifiedID`              varchar(3) NOT NULL,        -- "Z01"            業界区分
  `BusinessProcessSpecifiedID`     varchar(3) NOT NULL,        -- "001"            データ区分
  `ExchangedDocumentID`            varchar(40) DEFAULT NULL,   -- "123456-01"      支払通知番号
  `IssueDateTime`                  varchar(8) NOT NULL,        -- YYYYMMDD         支払通知発行日
  `IssuerAssignedID`               varchar(40) NOT NULL,       -- "A-123456"       請求書番号
  `PayerID`                        varchar(13) NOT NULL,       -- 1234567890123    支払人企業法人コード 
  `PayeeID`                        varchar(13) NOT NULL,       -- 3456789012345    受取人企業法人コード 
  `BuyerName`                      varchar(40) NOT NULL,       -- "全銀商事"       請求先企業名
  `BuyerID`                        int(13) NOT NULL,           -- 3456789012345    請求先企業法人コード 
  `PaymentTotalAmount`             varchar(10) NOT NULL,       -- "10800"          支払金額（明細）
  `BalanceOutReasonDescription`    varchar(40) DEFAULT NULL,   -- "無し"           金額相殺理由
  `BalanceOutCalculatedAmount`     varchar(10) DEFAULT NULL,   -- "0"              相殺金額
  `TaxCalculatedAmount1`           varchar(10) NOT NULL,       -- "800"            税額1
  `TaxCalculatedRate1`             varchar(3) NOT NULL,        -- "8"              税率1
  `TaxCalculatedAmount2`           varchar(10) DEFAULT NULL,   -- "1000"           税額2
  `TaxCalculatedRate2`             varchar(3) DEFAULT NULL,    -- "10"             税率2
  `TaxTotalAmount`                 varchar(10) NOT NULL,       -- "1800"           税額（合計）
  `Content`                        varchar(140) DEFAULT NULL,  -- "サンプルデータ"  備考

    PRIMARY KEY (`PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),

    CONSTRAINT `DataPlatformPaymentRequisitionSZEDISZEDIData_fk` FOREIGN KEY (`PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`) REFERENCES `data_platform_payment_requisition_item_data` (`PayerPaymentRequisitionID`, `PayerPaymentRequisitionItem`),
    CONSTRAINT `DataPlatformPaymentRequisitionSZEDISZEDIDataPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionSZEDISZEDIDataPayee_fk` FOREIGN KEY (`Payee`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionItemDataBillFromParty_fk` FOREIGN KEY (`BillFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionItemDataBillToParty_fk` FOREIGN KEY (`BillToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionSZEDISZEDIDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPaymentRequisitionItemDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
