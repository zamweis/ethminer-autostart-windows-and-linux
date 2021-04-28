start "" "C:\Ethminer\init-miningconfig"

:start
ethminer -U -R -P stratum://0x6DFcFe20565729f9Db800bc7342b62B3D2eC864B.lazy-reader@eu1.ethermine.org:4444

@ping -n 10 localhost> nul

goto start