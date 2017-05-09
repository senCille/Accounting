@REM FIREBIRD CLIENT
copy c:\views\Accounting\Deploy\scAccounting.exe c:\views\BinAccounting\FirebirdClient
@rem copy c:\views\Accounting\Deploy\scStub.exe       c:\views\BinAccounting\FirebirdClient
copy c:\views\Accounting\Deploy\GDS32.DLL        c:\views\BinAccounting\FirebirdClient
copy c:\views\Accounting\Deploy\fbclient.dll     c:\views\BinAccounting\FirebirdClient


@REM FIREBIRD EMBEDDED
copy c:\views\Accounting\Deploy\scAccounting.exe c:\views\BinAccounting\FirebirdEmbedded
@rem copy c:\views\Accounting\Deploy\scStub.exe       c:\views\BinAccounting\FirebirdEmbedded
copy c:\views\Accounting\Deploy\GDS32.DLL        c:\views\BinAccounting\FirebirdEmbedded
copy c:\views\Accounting\Deploy\fbclient.dll     c:\views\BinAccounting\FirebirdEmbedded

@REM FIREBIRD USB
copy c:\views\Accounting\Deploy\scAccounting.exe c:\views\BinAccounting\FirebirdUSB
@rem copy c:\views\Accounting\Deploy\scStub.exe       c:\views\BinAccounting\FirebirdUSB
copy c:\views\Accounting\Deploy\GDS32.DLL        c:\views\BinAccounting\FirebirdUSB
copy c:\views\Accounting\Deploy\fbclient.dll     c:\views\BinAccounting\FirebirdUSB

@REM FIREBIRD MS-SQL SERVER
copy c:\views\Accounting\Deploy\scAccounting.exe c:\views\BinAccounting\MSSQL_SERVER
@rem copy c:\views\Accounting\Deploy\scStub.exe       c:\views\BinAccounting\MSSQL_SERVER
copy c:\views\Accounting\Deploy\GDS32.DLL        c:\views\BinAccounting\MSSQL_SERVER
copy c:\views\Accounting\Deploy\fbclient.dll     c:\views\BinAccounting\MSSQL_SERVER


pause

