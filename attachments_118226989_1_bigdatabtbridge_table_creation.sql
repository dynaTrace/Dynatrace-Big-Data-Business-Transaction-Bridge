create external table BT_PP (
    Name STRING,
    Application STRING,
    PathId STRING,
    StartTime TIMESTAMP,
    Dimensions MAP<STRING, STRING>,
    Values MAP<STRING, DOUBLE>,
    Failed BOOLEAN,
    VisitId BIGINT,
    ResponseTime DOUBLE,
    Duration DOUBLE,
    CpuTime DOUBLE,
    ExecTime DOUBLE,
    SuspensionTime DOUBLE,
    SyncTime DOUBLE,
    WaitTime DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\;' ESCAPED BY '\\' COLLECTION ITEMS TERMINATED BY ',' MAP KEYS TERMINATED BY '='
LOCATION '/user/bts/pp';


create external table BT_PA (
    Name STRING,
    Application STRING,
    PathId STRING,
    StartTime TIMESTAMP,
    Dimensions MAP<STRING, STRING>,
    Values MAP<STRING, DOUBLE>,
    Failed BOOLEAN,
    ActionName STRING,
    Url STRING,
    VisitId BIGINT,
    ResponseTime DOUBLE,
    Duration DOUBLE,
    CpuTime DOUBLE,
    ExecTime DOUBLE,
    SuspensionTime DOUBLE,
    SyncTime DOUBLE,
    WaitTime DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\;' ESCAPED BY '\\' COLLECTION ITEMS TERMINATED BY ',' MAP KEYS TERMINATED BY '='
LOCATION '/user/bts/pa';


create external table BT_VISIT (
    Name STRING,
    Application STRING,
    VisitId BIGINT,
    StartTime TIMESTAMP,
    EndTime TIMESTAMP,
    Dimensions MAP<STRING, STRING>,
    Values MAP<STRING, DOUBLE>,
    User STRING,
    Converted BOOLEAN,
    Apdex DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\;' ESCAPED BY '\\' COLLECTION ITEMS TERMINATED BY ',' MAP KEYS TERMINATED BY '='
LOCATION '/user/bts/visit';