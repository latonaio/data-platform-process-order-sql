CREATE TABLE `data_platform_production_order_operation_data`
(
		`ProductionPlantBusinessPartner`                   int(12) NOT NULL,
		`ProcessOrder`                                     int(16) NOT NULL,
		`OrderInternalBillOfOperations`                    varchar(4) NOT NULL,
		`ProcessOrderSequence`                             varchar(4) NOT NULL,
		`ProcessOrderOperation`                            varchar(4) NOT NULL,
		`ProcessOrderType`                                 varchar(4) DEFAULT NULL,
		`ProcessOrderOperationText`                        varchar(200) DEFAULT NULL,
        `OperationIsReleased`                              tinyint(1) DEFAULT NULL,
		`OperationIsConfirmed`                             tinyint(1) DEFAULT NULL,
		`OperationIsPartiallyConfirmed`                    tinyint(1) DEFAULT NULL,
		`OperationIsDeleted`                               tinyint(1) DEFAULT NULL,
        `OperationIsClosed`                                tinyint(1) DEFAULT NULL,
        `ProductionPlant`                                  varchar(4) DEFAULT NULL,
        `WorkCenter`                                       int(16) DEFAULT NULL,
        `OperationErlstSchedldExecStrtDte`                 date DEFAULT NULL,
        `OperationErlstSchedldExecStrtTme`                 time DEFAULT NULL,
		`OperationErlstSchedldExecEndDte`                  date DEFAULT NULL,
		`OperationErlstSchedldExecEndTme`                  time DEFAULT NULL,
		`OperationActualExecutionStartDate`                date DEFAULT NULL,
   		`OperationActualExecutionStartTime`                time DEFAULT NULL,
		`OperationActualExecutionEndDate`                  date DEFAULT NULL,
   		`OperationActualExecutionEndTime`                  time DEFAULT NULL,
		`ErlstSchedldExecDurnInWorkdays`                   varchar(4) DEFAULT NULL,
   		`OperationActualExecutionDays`                     varchar(4) DEFAULT NULL,
		`OperationUnit`                                    varchar(3) DEFAULT NULL,
   		`OperationPlannedTotalQuantity`                    float(15) DEFAULT NULL,
		`OperationTotalConfirmedYieldQty`                  float(15) DEFAULT NULL,
		`LastChangeDate`                                   date DEFAULT NULL,
		`IsCancelled`                                      tinyint(1) DEFAULT NULL,
		`IsMarkedForDeletion`                              tinyint(1) DEFAULT NULL,
		
	PRIMARY KEY (`ProductionPlantBusinessPartner`, `ProcessOrder`, `OrderInternalBillOfOperations`,`ProcessOrderSequence`, `ProcessOrderOperation`),
	
    CONSTRAINT `DataPlatformProcessOrderOperationData_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProcessOrder`) REFERENCES `data_platform_process_order_header_data` (`ProductionPlantBusinessPartner`, `ProcessOrder`),
    CONSTRAINT `DataPlatformProcessOrderOperationDataProductionPlant_fk` FOREIGN KEY (`ProductionPlant`) REFERENCES `data_platform_plant_general_data` (`Plant`),
    CONSTRAINT `DataPlatformProcessOrderOperationDataWorkCenter_fk` FOREIGN KEY (`WorkCenter`) REFERENCES `data_platform_work_center_header_data` (`WorkCenter`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
