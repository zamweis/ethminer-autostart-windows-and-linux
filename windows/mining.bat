:: Task to run MSI Afterburner with privileges and the mining profile
C:\Windows\System32\schtasks.exe /RUN /TN Mining\MSIAfterburner

:start
:: Start ethminer
:: add own addres and worker name
ethminer -U -R -P stratum://0x6DFcFe20565729f9Db800bc7342b62B3D2eC864B.lazyreader@eu1.ethermine.org:4444

:: Wait 10 seconds before restarting ethminer if crashed
@ping -n 10 localhost> nul

:: Restart ethminer
goto start
