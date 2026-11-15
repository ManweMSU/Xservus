mkdir bin

echo Creo Xservum
xv libxservus.xv -N
xv xservus.xv -No bin/xservus.xx
xv xservus-clode.xv -No bin/xservus-clode.xx
chmod 755 bin/xservus.xx
chmod 755 bin/xservus-clode.xx

echo Creo extensionem HTTP
xv libxhttp.xv -N
xv xhttp.xv -NO bin

echo Creo extensionem IFR
xv xifr.xv -NO bin

echo Creo extensionem IFR-SL
xv sl/ifr_sl.xv -N
xv sl/ifr_sl_servus.xv -N
xv sl/ifr_sl_liber.xv -N
xv sl/xifr_sl.xv -NlO . bin

echo Creo extensionem IFR-RS
xv ifr_rs.xv -N
xv xifr_rs.xv -NO bin

echo Creo rectorem
xv xservus-rege.xv -Nlo sl bin/xservus-rege.xx
chmod 755 bin/xservus-rege.xx