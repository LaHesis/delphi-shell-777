object DataModuleUnit: TDataModuleUnit
  OldCreateOrder = False
  Left = 414
  Top = 12
  Height = 703
  Width = 879
  object ADOTableSessionsMF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOTableSessionsMFCalcFields
    OnNewRecord = ADOTableSessionsMFSubstDefault
    TableName = 'tbl_visitors_sessions'
    Left = 49
    Top = 147
    object ADOTableSessionsMFID_session: TAutoIncField
      FieldName = 'ID_session'
      ReadOnly = True
      Visible = False
    end
    object ADOTableSessionsMFStart_time: TDateTimeField
      Tag = 1
      DisplayLabel = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      DisplayWidth = 20
      FieldName = 'Start_time'
      Required = True
      EditMask = '!99/99/0000\ 90:00:00;1;_'
    end
    object ADOTableSessionsMFDurationInH: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = #1063#1072#1089#1086#1074
      DisplayWidth = 9
      FieldName = 'DurationInH'
    end
    object ADOTableSessionsMFInternetL: TStringField
      DefaultExpression = '3'
      DisplayLabel = #1048#1085#1090#1077#1088#1085#1077#1090
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'InternetL'
      LookupDataSet = ADOTableSubInternetCh
      LookupKeyFields = 'ID_internet'
      LookupResultField = 'BooleanVariant'
      KeyFields = 'With_Internet'
      Lookup = True
    end
    object ADOTableSessionsMFid_equipment: TIntegerField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'id_equipment'
      Visible = False
    end
    object ADOTableSessionsMFid_appointed_employee: TIntegerField
      DefaultExpression = 'AuthorisationForm.DBEditIDAppEmp'
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldName = 'id_appointed_employee'
      Visible = False
    end
    object ADOTableSessionsMFid_visitor: TIntegerField
      DisplayLabel = #1055#1086#1089#1077#1090#1080#1090#1077#1083#1100
      FieldName = 'id_visitor'
      Visible = False
    end
    object ADOTableSessionsMFid_rate: TIntegerField
      DisplayLabel = #1058#1072#1088#1080#1092
      FieldName = 'id_rate'
      Visible = False
    end
    object ADOTableSessionsMFRateL: TStringField
      Tag = 1
      DisplayLabel = #1058#1072#1088#1080#1092
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'RateL'
      LookupDataSet = ADOTableSubRates
      LookupKeyFields = 'ID_rate'
      LookupResultField = 'Rate'
      KeyFields = 'id_rate'
      Size = 50
      Lookup = True
    end
    object ADOTableSessionsMFEquipment: TStringField
      Tag = 1
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'EquipmentL'
      LookupDataSet = ADOTableSubEquipment
      LookupKeyFields = 'ID_equipment'
      LookupResultField = 'Equipment'
      KeyFields = 'id_equipment'
      Size = 50
      Lookup = True
    end
    object ADOTableSessionsMFVisitorL: TStringField
      Tag = 1
      DisplayLabel = #1055#1086#1089#1077#1090#1080#1090#1077#1083#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'VisitorL'
      LookupDataSet = ADOTableSubVisitor
      LookupKeyFields = 'ID_visitor'
      LookupResultField = 'Visitor'
      KeyFields = 'id_visitor'
      Size = 50
      Lookup = True
    end
    object ADOTableSessionsMFAppEmlL: TStringField
      Tag = 1
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'AppEmlL'
      LookupDataSet = ADOTableSubAppEmp
      LookupKeyFields = 'ID_employee'
      LookupResultField = 'Employee'
      KeyFields = 'id_appointed_employee'
      Size = 55
      Lookup = True
    end
    object ADOTableSessionsMFWith_Internet: TBooleanField
      FieldName = 'With_Internet'
      Visible = False
    end
    object ADOTableSessionsMFCost: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DisplayWidth = 12
      FieldName = 'Cost'
      currency = True
      Precision = 19
    end
    object ADOTableSessionsMFEndDateTimeCalc: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'EndDateTimeCalc'
      Calculated = True
    end
  end
  object DataSourceSessionMF: TDataSource
    DataSet = ADOTableSessionsMF
    Left = 161
    Top = 147
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1048#1085#1090#1077#1088 +
      #1085#1077#1090'-'#1089#1072#1083#1086#1085' 777 v04.mdb;Mode=Share Deny None;Persist Security Info' +
      '=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";J' +
      'et OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:' +
      'Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet ' +
      'OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password' +
      '="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Dat' +
      'abase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLE' +
      'DB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 34
    Top = 3
  end
  object ADOTableServicesMF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnNewRecord = ADOTableServicesMFSubstDefault
    TableName = 'tbl_services'
    Left = 46
    Top = 224
    object ADOTableServicesMFID_service: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID_service'
      ReadOnly = True
      Visible = False
    end
    object ADOTableServicesMFService_date: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1072#1079#1072#1085#1080#1103
      DisplayWidth = 17
      FieldName = 'Service_date'
      EditMask = '!99/99/0000\ 90:00:00;1;_'
    end
    object ADOTableServicesMFEquipmentL: TStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'EquipmentL'
      LookupDataSet = ADOTableSubEquipment
      LookupKeyFields = 'ID_equipment'
      LookupResultField = 'Equipment'
      KeyFields = 'id_equipment'
      Size = 50
      Lookup = True
    end
    object ADOTableServicesMFVisitorL: TStringField
      DisplayLabel = #1055#1086#1089#1077#1090#1080#1090#1077#1083#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'VisitorL'
      LookupDataSet = ADOTableSubVisitor
      LookupKeyFields = 'ID_visitor'
      LookupResultField = 'Visitor'
      KeyFields = 'id_visitor'
      Size = 50
      Lookup = True
    end
    object ADOTableServicesMFAmount: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' ('#1083#1080#1089#1090#1086#1074', ...)'
      DisplayWidth = 18
      FieldName = 'Amount'
    end
    object ADOTableServicesMFServiceTypeL: TStringField
      DisplayLabel = #1042#1080#1076' '#1091#1089#1083#1091#1075
      DisplayWidth = 31
      FieldKind = fkLookup
      FieldName = 'ServiceTypeL'
      LookupDataSet = ADOTableSTwSessionT
      LookupKeyFields = 'ID_services_type'
      LookupResultField = 'Service_name'
      KeyFields = 'id_service_type'
      Size = 50
      Lookup = True
    end
    object ADOTableServicesMFRateL: TStringField
      DisplayLabel = #1058#1072#1088#1080#1092
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'RateL'
      LookupDataSet = ADOTableSubRates
      LookupKeyFields = 'ID_rate'
      LookupResultField = 'Rate'
      KeyFields = 'id_rate'
      Size = 50
      Lookup = True
    end
    object ADOTableServicesMFAppEmpL: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'AppEmpL'
      LookupDataSet = ADOTableSubAppEmp
      LookupKeyFields = 'ID_employee'
      LookupResultField = 'Employee'
      KeyFields = 'id_appointment'
      Size = 50
      Lookup = True
    end
    object ADOTableServicesMFid_appointment: TIntegerField
      DefaultExpression = '1'
      DisplayWidth = 15
      FieldName = 'id_appointment'
      Visible = False
    end
    object ADOTableServicesMFid_visitor: TIntegerField
      DefaultExpression = '3'
      DisplayWidth = 12
      FieldName = 'id_visitor'
      Visible = False
    end
    object ADOTableServicesMFid_equipment: TIntegerField
      DefaultExpression = '1'
      DisplayWidth = 13
      FieldName = 'id_equipment'
      Visible = False
    end
    object ADOTableServicesMFid_service_type: TIntegerField
      DefaultExpression = '1'
      DisplayWidth = 15
      FieldName = 'id_service_type'
      Visible = False
    end
    object ADOTableServicesMFid_rate: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_rate'
      Visible = False
    end
    object ADOTableServicesMFCost: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DisplayWidth = 10
      FieldName = 'Cost'
      currency = True
      Precision = 19
    end
  end
  object DataSourceServicesMF: TDataSource
    DataSet = ADOTableServicesMF
    Left = 164
    Top = 219
  end
  object DataSourceClientsMF: TDataSource
    DataSet = ADOTableVisitorsMF
    Left = 152
    Top = 288
  end
  object ADOTableVisitorsMF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'First_name'
    TableName = 'tbl_visitors'
    Left = 40
    Top = 288
    object ADOTableVisitorsMFID_visitor: TAutoIncField
      FieldName = 'ID_visitor'
      ReadOnly = True
      Visible = False
    end
    object ADOTableVisitorsMFLast_name: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 30
      FieldName = 'Last_name'
      Size = 50
    end
    object ADOTableVisitorsMFFirst_name: TWideStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 20
      FieldName = 'First_name'
      Size = 40
    end
    object ADOTableVisitorsMFMiddle_name: TWideStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 22
      FieldName = 'Middle_name'
      Size = 45
    end
    object ADOTableVisitorsMFid_gender: TIntegerField
      DisplayWidth = 21
      FieldName = 'id_gender'
      Visible = False
    end
    object ADOTableVisitorsMFGender: TStringField
      DisplayLabel = #1055#1086#1083
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'Gender'
      LookupDataSet = ADOTableGenders
      LookupKeyFields = 'ID_gender'
      LookupResultField = 'Gender_name'
      KeyFields = 'id_gender'
      Lookup = True
    end
  end
  object ADOTableEquipments: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_equipment'
    Left = 40
    Top = 360
    object ADOTableEquipmentsID_equipment: TAutoIncField
      FieldName = 'ID_equipment'
      ReadOnly = True
      Visible = False
    end
    object ADOTableEquipmentsNumber: TWideStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      DisplayWidth = 10
      FieldName = 'Number'
      Size = 40
    end
    object ADOTableEquipmentsBrand: TWideStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 14
      FieldName = 'Brand'
      Size = 40
    end
    object ADOTableEquipmentsid_equipment_type: TIntegerField
      DisplayWidth = 24
      FieldName = 'id_equipment_type'
      Visible = False
    end
    object ADOTableEquipmentsEquTypeL: TStringField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'EquTypeL'
      LookupDataSet = ADOTableEquTypes
      LookupKeyFields = 'ID_equipment_type'
      LookupResultField = 'Equipment_type_name'
      KeyFields = 'id_equipment_type'
      Size = 40
      Lookup = True
    end
    object ADOTableEquipmentsIP_address: TWideStringField
      DisplayLabel = 'IP '#1072#1076#1088#1077#1089' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
      FieldName = 'IP_address'
      Size = 14
    end
  end
  object DataSourceEquipments: TDataSource
    DataSet = ADOTableEquipments
    Left = 152
    Top = 360
  end
  object ADOTableEquTypes: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_equipment_types'
    Left = 40
    Top = 432
    object ADOTableEquTypesID_equipment_type: TAutoIncField
      FieldName = 'ID_equipment_type'
      ReadOnly = True
      Visible = False
    end
    object ADOTableEquTypesEquipment_type_name: TWideStringField
      FieldName = 'Equipment_type_name'
      Size = 30
    end
  end
  object DataSourceEquTypes: TDataSource
    DataSet = ADOTableEquTypes
    Left = 152
    Top = 432
  end
  object ADOTableGenders: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_genders'
    Left = 40
    Top = 488
    object ADOTableGendersID_gender: TAutoIncField
      FieldName = 'ID_gender'
      ReadOnly = True
      Visible = False
    end
    object ADOTableGendersGender_name: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1072
      FieldName = 'Gender_name'
      Size = 15
    end
    object ADOTableGendersName_abbreviation: TWideStringField
      DisplayLabel = #1040#1073#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'Name_abbreviation'
      Size = 4
    end
  end
  object DataSourceGenders: TDataSource
    DataSet = ADOTableGenders
    Left = 152
    Top = 488
  end
  object ADOTableEmployees: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Last_name'
    TableName = 'tbl_employees'
    Left = 40
    Top = 552
    object ADOTableEmployeesID_employee: TAutoIncField
      DisplayWidth = 5
      FieldName = 'ID_employee'
      ReadOnly = True
      Visible = False
    end
    object ADOTableEmployeesLast_name: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 20
      FieldName = 'Last_name'
      Size = 50
    end
    object ADOTableEmployeesFirst_name: TWideStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 18
      FieldName = 'First_name'
      Size = 40
    end
    object ADOTableEmployeesMiddle_name: TWideStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 20
      FieldName = 'Middle_name'
      Size = 45
    end
    object ADOTableEmployeesid_gender: TIntegerField
      DisplayWidth = 5
      FieldName = 'id_gender'
      Visible = False
    end
    object ADOTableEmployeesGender: TStringField
      DisplayLabel = #1055#1086#1083
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'Gender'
      LookupDataSet = ADOTableGenders
      LookupKeyFields = 'ID_gender'
      LookupResultField = 'Gender_name'
      KeyFields = 'id_gender'
      Lookup = True
    end
  end
  object DataSourceEmployees: TDataSource
    DataSet = ADOTableEmployees
    Left = 152
    Top = 552
  end
  object ADOTableAddresses: TADOTable
    Active = True
    CacheSize = 20
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'id_employee'
    MasterFields = 'ID_employee'
    MasterSource = DataSourceEmployees
    TableName = 'tbl_employees_addresses'
    Left = 361
    Top = 3
    object ADOTableAddressesID_address: TAutoIncField
      FieldName = 'ID_address'
      ReadOnly = True
      Visible = False
    end
    object ADOTableAddressesid_employee: TIntegerField
      DisplayWidth = 19
      FieldName = 'id_employee'
      Visible = False
    end
    object ADOTableAddressesAdress: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 60
      FieldName = 'Adress'
      Size = 255
    end
    object ADOTableAddressesRegistration: TBooleanField
      DisplayLabel = #1055#1088#1086#1087#1080#1089#1082#1072
      DisplayWidth = 25
      FieldName = 'Registration'
    end
  end
  object DataSourceAddresses: TDataSource
    DataSet = ADOTableAddresses
    Left = 481
    Top = 3
  end
  object ADOTableCommunicationMeans: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_employee'
    MasterFields = 'ID_employee'
    MasterSource = DataSourceEmployees
    TableName = 'tbl_communication_means'
    Left = 358
    Top = 51
    object ADOTableCommunicationMeansID_communication_means: TAutoIncField
      FieldName = 'ID_communication_means'
      ReadOnly = True
      Visible = False
    end
    object ADOTableCommunicationMeansCommunication_means_type: TStringField
      DisplayLabel = #1058#1080#1087' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1089#1074#1103#1079#1080
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Communication_means_type'
      LookupDataSet = ADOTableCommTypes
      LookupKeyFields = 'ID_communication_means_type'
      LookupResultField = 'Communication_means_name'
      KeyFields = 'id_communication_means_type'
      Lookup = True
    end
    object ADOTableCommunicationMeansid_communication_means_type: TIntegerField
      FieldName = 'id_communication_means_type'
      Visible = False
    end
    object ADOTableCommunicationMeanscommunication_means_name: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1089#1074#1103#1079#1080
      DisplayWidth = 58
      FieldName = 'communication_means_name'
      Size = 70
    end
    object ADOTableCommunicationMeansid_employee: TIntegerField
      FieldName = 'id_employee'
      Visible = False
    end
  end
  object DataSourceCommunications: TDataSource
    DataSet = ADOTableCommunicationMeans
    Left = 508
    Top = 51
  end
  object ADOTableCommTypes: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_communication_means_types'
    Left = 366
    Top = 99
    object ADOTableCommTypesID_communication_means_type: TAutoIncField
      FieldName = 'ID_communication_means_type'
      ReadOnly = True
      Visible = False
    end
    object ADOTableCommTypesCommunication_means_name: TWideStringField
      DisplayLabel = #1042#1080#1076' '#1089#1088#1077#1076#1089#1090#1074' '#1089#1074#1103#1079#1080
      DisplayWidth = 55
      FieldName = 'Communication_means_name'
      Size = 40
    end
  end
  object DataSourceCommTypes: TDataSource
    DataSet = ADOTableCommTypes
    Left = 500
    Top = 99
  end
  object ADOTableAppEmpoyees: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_appointed_employee'
    Left = 48
    Top = 600
    object ADOTableAppEmpoyeesID_appointment: TAutoIncField
      DisplayWidth = 17
      FieldName = 'ID_appointment'
      ReadOnly = True
      Visible = False
    end
    object ADOTableAppEmpoyeesRecruitment_date: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103
      DisplayWidth = 14
      FieldName = 'Recruitment_date'
    end
    object ADOTableAppEmpoyeesDismissal_date: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
      DisplayWidth = 15
      FieldName = 'Dismissal_date'
    end
    object ADOTableAppEmpoyeesWage_number: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1072#1074#1086#1082
      DisplayWidth = 17
      FieldName = 'Wage_number'
    end
    object ADOTableAppEmpoyeesPassword: TWideStringField
      DisplayWidth = 60
      FieldName = 'Password'
      Visible = False
      Size = 50
    end
    object ADOTableAppEmpoyeesid_post: TIntegerField
      DisplayWidth = 15
      FieldName = 'id_post'
      Visible = False
    end
    object ADOTableAppEmpoyeesid_employee: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_employee'
      Visible = False
    end
    object ADOTableAppEmpoyeesPostL: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PostL'
      LookupDataSet = ADOTablePosts
      LookupKeyFields = 'ID_post'
      LookupResultField = 'Post_name'
      KeyFields = 'id_post'
      Lookup = True
    end
    object ADOTableAppEmpoyeesEmployeeL: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1080#1097
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'EmployeeL'
      LookupDataSet = ADOTableSubEmpl
      LookupKeyFields = 'ID_employee'
      LookupResultField = 'Employee'
      KeyFields = 'id_employee'
      Size = 40
      Lookup = True
    end
  end
  object DataSourceAppEmpoyees: TDataSource
    DataSet = ADOTableAppEmpoyees
    Left = 192
    Top = 600
  end
  object ADOTablePosts: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Post_name'
    TableName = 'tbl_posts'
    Left = 368
    Top = 144
    object ADOTablePostsID_post: TAutoIncField
      FieldName = 'ID_post'
      ReadOnly = True
      Visible = False
    end
    object ADOTablePostsPost_name: TWideStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 64
      FieldName = 'Post_name'
      Size = 50
    end
    object ADOTablePostsSalary: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = #1054#1082#1083#1072#1076
      DisplayWidth = 17
      FieldName = 'Salary'
      Precision = 19
    end
    object ADOTablePostsWages_number: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1072#1074#1086#1082
      FieldName = 'Wages_number'
    end
  end
  object DataSourcePosts: TDataSource
    DataSet = ADOTablePosts
    Left = 472
    Top = 144
  end
  object ADOTableSubEmpl: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    MasterSource = DataSourceEmployees
    TableName = 'sql_sub_employee'
    Left = 648
    Top = 520
    object ADOTableSubEmplID_employee: TAutoIncField
      FieldName = 'ID_employee'
      ReadOnly = True
    end
    object ADOTableSubEmplEmployee: TWideStringField
      FieldName = 'Employee'
      ReadOnly = True
      Size = 255
    end
  end
  object ADOTableSubVisitor: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sql_sub_visitors'
    Left = 776
    Top = 528
    object ADOTableSubVisitorID_visitor: TAutoIncField
      FieldName = 'ID_visitor'
      ReadOnly = True
    end
    object ADOTableSubVisitorFirst_name: TWideStringField
      FieldName = 'First_name'
      Size = 40
    end
    object ADOTableSubVisitorLast_name: TWideStringField
      FieldName = 'Last_name'
      Size = 50
    end
    object ADOTableSubVisitorMiddle_name: TWideStringField
      FieldName = 'Middle_name'
      Size = 45
    end
    object ADOTableSubVisitorVisitor: TWideStringField
      FieldName = 'Visitor'
      ReadOnly = True
      Size = 255
    end
  end
  object ADOTableSubRates: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sql_sub_rates'
    Left = 648
    Top = 568
    object ADOTableSubRatesID_rate: TAutoIncField
      FieldName = 'ID_rate'
      ReadOnly = True
    end
    object ADOTableSubRatesAction_start: TDateTimeField
      FieldName = 'Action_start'
    end
    object ADOTableSubRatesAction_end: TDateTimeField
      FieldName = 'Action_end'
    end
    object ADOTableSubRatesRate: TWideStringField
      FieldName = 'Rate'
      ReadOnly = True
      Size = 255
    end
  end
  object ADOTableSubEquipment: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sql_sub_equipment'
    Left = 776
    Top = 576
    object ADOTableSubEquipmentID_equipment: TAutoIncField
      FieldName = 'ID_equipment'
      ReadOnly = True
    end
    object ADOTableSubEquipmentEquipment_type_name: TWideStringField
      FieldName = 'Equipment_type_name'
      Size = 30
    end
    object ADOTableSubEquipmentNumber: TWideStringField
      FieldName = 'Number'
      Size = 40
    end
    object ADOTableSubEquipmentBrand: TWideStringField
      FieldName = 'Brand'
      Size = 40
    end
    object ADOTableSubEquipmentEquipment: TWideStringField
      FieldName = 'Equipment'
      ReadOnly = True
      Size = 255
    end
  end
  object ADOTableRates: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Action_end'
    TableName = 'tbl_rates'
    Left = 368
    Top = 192
    object ADOTableRatesID_rate: TAutoIncField
      FieldName = 'ID_rate'
      ReadOnly = True
      Visible = False
    end
    object ADOTableRatesAction_start: TDateTimeField
      DisplayLabel = #1044#1077#1081#1089#1090#1074#1091#1077#1090' '#1089
      DisplayWidth = 20
      FieldName = 'Action_start'
    end
    object ADOTableRatesAction_end: TDateTimeField
      DisplayLabel = #1044#1077#1081#1089#1090#1074#1091#1077#1090' '#1087#1086
      DisplayWidth = 20
      FieldName = 'Action_end'
    end
  end
  object DataSourceRates: TDataSource
    DataSet = ADOTableRates
    Left = 456
    Top = 192
  end
  object ADOTableRateComponents: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_rate'
    MasterFields = 'ID_rate'
    MasterSource = DataSourceRates
    TableName = 'tbl_rate_components'
    Left = 352
    Top = 240
    object ADOTableRateComponentsID_rate_component: TAutoIncField
      FieldName = 'ID_rate_component'
      ReadOnly = True
      Visible = False
    end
    object ADOTableRateComponentsCost: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
      DisplayWidth = 20
      FieldName = 'Cost'
      currency = True
      Precision = 19
    end
    object ADOTableRateComponentsServiceTypeL: TStringField
      DisplayLabel = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'ServiceTypeL'
      LookupDataSet = ADOTableServiceTypes
      LookupKeyFields = 'ID_services_type'
      LookupResultField = 'Service_name'
      KeyFields = 'id_service_type'
      Size = 40
      Lookup = True
    end
    object ADOTableRateComponentsMeasureTypeL: TStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'MeasureTypeL'
      LookupDataSet = ADOTableMeasureUnits
      LookupKeyFields = 'ID_unit'
      LookupResultField = 'Unit_name'
      KeyFields = 'id_measure_unit'
      Size = 70
      Lookup = True
    end
    object ADOTableRateComponentsid_rate: TIntegerField
      DisplayWidth = 13
      FieldName = 'id_rate'
      Visible = False
    end
    object ADOTableRateComponentsid_service_type: TIntegerField
      DisplayWidth = 40
      FieldName = 'id_service_type'
      Visible = False
    end
    object ADOTableRateComponentsid_measure_unit: TIntegerField
      DisplayWidth = 22
      FieldName = 'id_measure_unit'
      Visible = False
    end
  end
  object DataSourceRateComponentsRF: TDataSource
    DataSet = ADOTableRateComponents
    Left = 504
    Top = 240
  end
  object ADOTableMeasureUnits: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_measure_units'
    Left = 368
    Top = 520
    object ADOTableMeasureUnitsID_unit: TAutoIncField
      FieldName = 'ID_unit'
      ReadOnly = True
      Visible = False
    end
    object ADOTableMeasureUnitsUnit_name: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'Unit_name'
      Size = 30
    end
    object ADOTableMeasureUnitsUnit_abbreviation: TWideStringField
      DisplayLabel = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'Unit_abbreviation'
      Size = 5
    end
  end
  object DataSourceMeasureUnits: TDataSource
    DataSet = ADOTableMeasureUnits
    Left = 512
    Top = 520
  end
  object ADOTableServiceTypes: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_services_types'
    Left = 368
    Top = 568
    object ADOTableServiceTypesID_services_type: TAutoIncField
      DisplayWidth = 17
      FieldName = 'ID_services_type'
      ReadOnly = True
      Visible = False
    end
    object ADOTableServiceTypesService_name: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
      DisplayWidth = 56
      FieldName = 'Service_name'
      Size = 50
    end
    object ADOTableServiceTypesComment: TWideStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      DisplayWidth = 41
      FieldName = 'Comment'
      Size = 300
    end
  end
  object DataSourceServiceTypes: TDataSource
    DataSet = ADOTableServiceTypes
    Left = 512
    Top = 568
  end
  object ADOTableAppEmpMastEmp: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_employee'
    MasterFields = 'ID_employee'
    MasterSource = DataSourceEmployees
    TableName = 'tbl_appointed_employee'
    Left = 752
    Top = 8
    object AutoIncField1: TAutoIncField
      DisplayWidth = 17
      FieldName = 'ID_appointment'
      ReadOnly = True
      Visible = False
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103
      DisplayWidth = 22
      FieldName = 'Recruitment_date'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
      DisplayWidth = 22
      FieldName = 'Dismissal_date'
    end
    object FloatField1: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1072#1074#1086#1082
      DisplayWidth = 14
      FieldName = 'Wage_number'
    end
    object WideStringField1: TWideStringField
      DisplayWidth = 60
      FieldName = 'Password'
      Visible = False
      Size = 50
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_post'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_employee'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldKind = fkLookup
      FieldName = 'PostL'
      LookupDataSet = ADOTablePosts
      LookupKeyFields = 'ID_post'
      LookupResultField = 'Post_name'
      KeyFields = 'id_post'
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1080#1097
      FieldKind = fkLookup
      FieldName = 'EmployeeL'
      LookupDataSet = ADOTableSubEmpl
      LookupKeyFields = 'ID_employee'
      LookupResultField = 'Employee'
      KeyFields = 'id_employee'
      Lookup = True
    end
  end
  object DataSourceAppEmpMastEmp: TDataSource
    DataSet = ADOTableAppEmpMastEmp
    Left = 752
    Top = 56
  end
  object ADOQueryForFieldsVisitorsSessions: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_visitors_sessions where 1<>1')
    Left = 736
    Top = 136
    object ADOQueryForFieldsVisitorsSessionsID_session: TAutoIncField
      DisplayLabel = 'ID '#1057#1077#1089#1089#1080#1103
      FieldName = 'ID_session'
      ReadOnly = True
    end
    object ADOQueryForFieldsVisitorsSessionsStart_time: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      FieldName = 'Start_time'
    end
    object ADOQueryForFieldsVisitorsSessionsEnd_time: TDateTimeField
      FieldName = 'End_time'
    end
    object ADOQueryForFieldsVisitorsSessionsWith_Internet: TBooleanField
      FieldName = 'With_Internet'
    end
    object ADOQueryForFieldsVisitorsSessionsCost: TBCDField
      FieldName = 'Cost'
      Precision = 19
    end
    object ADOQueryForFieldsVisitorsSessionsid_equipment: TIntegerField
      FieldName = 'id_equipment'
    end
    object ADOQueryForFieldsVisitorsSessionsid_appointed_employee: TIntegerField
      FieldName = 'id_appointed_employee'
    end
    object ADOQueryForFieldsVisitorsSessionsid_visitor: TIntegerField
      FieldName = 'id_visitor'
    end
    object ADOQueryForFieldsVisitorsSessionsid_rate: TIntegerField
      FieldName = 'id_rate'
    end
  end
  object ADOTableSubAppEmp: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sql_sub_appointed_employee'
    Left = 712
    Top = 472
    object ADOTableSubAppEmpID_employee: TAutoIncField
      FieldName = 'ID_employee'
      ReadOnly = True
    end
    object ADOTableSubAppEmpLast_name: TWideStringField
      FieldName = 'Last_name'
      Size = 50
    end
    object ADOTableSubAppEmpFirst_name: TWideStringField
      FieldName = 'First_name'
      Size = 40
    end
    object ADOTableSubAppEmpMiddle_name: TWideStringField
      FieldName = 'Middle_name'
      Size = 45
    end
    object ADOTableSubAppEmpPost_name: TWideStringField
      FieldName = 'Post_name'
      Size = 50
    end
    object ADOTableSubAppEmpEmployee: TWideStringField
      FieldName = 'Employee'
      ReadOnly = True
      Size = 255
    end
  end
  object ADOTableSubInternetCh: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbl_internet'
    Left = 368
    Top = 616
    object ADOTableSubInternetChID_internet: TBooleanField
      FieldName = 'ID_internet'
    end
    object ADOTableSubInternetChBooleanVariant: TWideStringField
      FieldName = 'BooleanVariant'
      Size = 14
    end
  end
  object ADOTableRateCompMastMF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_rate'
    MasterFields = 'ID_rate'
    MasterSource = DataSourceRatesMastMF
    TableName = 'tbl_rate_components'
    Left = 360
    Top = 336
    object ADOTableRateCompMastMFID_rate_component: TAutoIncField
      FieldName = 'ID_rate_component'
      ReadOnly = True
    end
    object ADOTableRateCompMastMFCost: TBCDField
      FieldName = 'Cost'
      Precision = 19
    end
    object ADOTableRateCompMastMFid_rate: TIntegerField
      FieldName = 'id_rate'
    end
    object ADOTableRateCompMastMFid_service_type: TIntegerField
      FieldName = 'id_service_type'
    end
    object ADOTableRateCompMastMFid_measure_unit: TIntegerField
      FieldName = 'id_measure_unit'
    end
  end
  object DataSourceRateCompMastMF: TDataSource
    DataSet = ADOTableRateCompMastMF
    Left = 512
    Top = 336
  end
  object ADOTableRatesMastMF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ID_rate'
    MasterFields = 'id_rate'
    MasterSource = DataSourceSessionMF
    TableName = 'tbl_rates'
    Left = 360
    Top = 288
    object ADOTableRatesMastMFID_rate: TAutoIncField
      FieldName = 'ID_rate'
      ReadOnly = True
    end
    object ADOTableRatesMastMFAction_start: TDateTimeField
      FieldName = 'Action_start'
    end
    object ADOTableRatesMastMFAction_end: TDateTimeField
      FieldName = 'Action_end'
    end
  end
  object DataSourceRatesMastMF: TDataSource
    DataSet = ADOTableRatesMastMF
    Left = 496
    Top = 288
  end
  object ADOTableRateCompMastMFServ: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_rate'
    MasterFields = 'ID_rate'
    MasterSource = DataSourceRatesMastMFServ
    TableName = 'tbl_rate_components'
    Left = 344
    Top = 440
    object ADOTableRateCompMastMFServID_rate_component: TAutoIncField
      DisplayWidth = 19
      FieldName = 'ID_rate_component'
      ReadOnly = True
      Visible = False
    end
    object ADOTableRateCompMastMFServCost: TBCDField
      DisplayWidth = 12
      FieldName = 'Cost'
      Precision = 19
    end
    object ADOTableRateCompMastMFServid_rate: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_rate'
    end
    object ADOTableRateCompMastMFServid_service_type: TIntegerField
      DisplayWidth = 16
      FieldName = 'id_service_type'
    end
    object ADOTableRateCompMastMFServid_measure_unit: TIntegerField
      DisplayWidth = 19
      FieldName = 'id_measure_unit'
    end
  end
  object DataSourceRateCompMastMFServ: TDataSource
    DataSet = ADOTableRateCompMastMFServ
    Left = 512
    Top = 440
  end
  object ADOTableRatesMastMFServ: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ID_rate'
    MasterFields = 'id_rate'
    MasterSource = DataSourceServicesMF
    TableName = 'tbl_rates'
    Left = 360
    Top = 392
    object ADOTableRatesMastMFServID_rate: TAutoIncField
      FieldName = 'ID_rate'
      ReadOnly = True
    end
    object ADOTableRatesMastMFServAction_start: TDateTimeField
      FieldName = 'Action_start'
    end
    object ADOTableRatesMastMFServAction_end: TDateTimeField
      FieldName = 'Action_end'
    end
  end
  object DataSourceRatesMastMFServ: TDataSource
    DataSet = ADOTableRatesMastMFServ
    Left = 520
    Top = 392
  end
  object ADOTableSTwSessionT: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'ID_services_type > 2'
    Filtered = True
    TableName = 'tbl_services_types'
    Left = 648
    Top = 616
    object AutoIncField2: TAutoIncField
      DisplayWidth = 17
      FieldName = 'ID_services_type'
      ReadOnly = True
      Visible = False
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072
      DisplayWidth = 56
      FieldName = 'Service_name'
      Size = 50
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      DisplayWidth = 41
      FieldName = 'Comment'
      Size = 300
    end
  end
end
