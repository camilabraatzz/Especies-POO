object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Animais'
  ClientHeight = 426
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pgControl: TPageControl
    Left = 0
    Top = 0
    Width = 251
    Height = 426
    ActivePage = pg2
    Align = alClient
    TabOrder = 0
    object pg1: TTabSheet
      Caption = 'Esp'#233'cies'
      object edtEspecies: TLabeledEdit
        Left = 24
        Top = 27
        Width = 201
        Height = 21
        EditLabel.Width = 81
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome da esp'#233'cie'
        TabOrder = 0
      end
      object btnInserir1: TButton
        Left = 150
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Inserir'
        TabOrder = 1
        OnClick = btnInserir1Click
      end
    end
    object pg2: TTabSheet
      Caption = 'Animais'
      ImageIndex = 1
      object Label2: TLabel
        Left = 24
        Top = 9
        Width = 79
        Height = 13
        Caption = 'Escolher esp'#233'cie'
      end
      object edtNomeAnimal: TLabeledEdit
        Left = 24
        Top = 67
        Width = 201
        Height = 21
        EditLabel.Width = 75
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do animal'
        TabOrder = 1
      end
      object btnInserir2: TButton
        Left = 150
        Top = 94
        Width = 75
        Height = 25
        Caption = 'Inserir'
        TabOrder = 2
        OnClick = btnInserir2Click
      end
      object cmbEspecie: TComboBox
        Left = 24
        Top = 24
        Width = 201
        Height = 21
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 24
        Top = 125
        Width = 201
        Height = 270
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
  end
end
