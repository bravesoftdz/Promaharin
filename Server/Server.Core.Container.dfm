object smContainer: TsmContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 271
  Width = 415
  object DSServer: TDSServer
    OnDisconnect = DSServerDisconnect
    AutoStart = False
    Left = 24
    Top = 8
  end
  object DSHTTPService: TDSHTTPService
    Server = DSServer
    Filters = <>
    AuthenticationManager = DSAuthenticationManager
    Left = 96
    Top = 8
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Promaharin')
    LoginPrompt = False
    Left = 176
    Top = 8
  end
  object DSAuthenticationManager: TDSAuthenticationManager
    OnUserAuthenticate = DSAuthenticationManagerUserAuthenticate
    Roles = <>
    Left = 96
    Top = 64
  end
end
