:: Shortcut to init the config for your gpu with msi-afterburner
start "" "C:\Ethminer\init-miningconfig"

:start
:: Start ethminer
ethminer -U -R -P stratum://0x6DFcFe20565729f9Db800bc7342b62B3D2eC864B.lazyreader@eu1.ethermine.org:4444

:: Wait 10 seconds before restarting ethminer if crashed
@ping -n 10 localhost> nul

:: Restart ethminer
goto start
