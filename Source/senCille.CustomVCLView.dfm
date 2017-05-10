object FormCustomVCLView: TFormCustomVCLView
  Left = 959
  Top = 299
  Caption = '  '
  ClientHeight = 291
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 272
    Width = 450
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object TimerMessage: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerMessageTimer
    Left = 120
    Top = 56
  end
end
