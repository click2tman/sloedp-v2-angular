#!/bin/bash
#This file is used to download results and resources from the sloedp
#

#Variables
fpresident=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018
ppresident=https://electiondata.io/api/results/presidential

fparliamentary=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-parliamentary-polling-centre-results-2018
pparliamentary=https://electiondata.io/api/results/parliamentary

fcouncillor=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-councillor-election-results
pcouncillor=https://electiondata.io/api/results/councillor

fmayorchairperson=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-chair-election-results
pmayorchairperson=https://electiondata.io/api/results/major-chair

fvillageheadman=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-village-headman-election-results
pvillageheadman=https://electiondata.io/api/results/

fcandidates=/Users/tamba.s.lamin/DEV/sloedp/src/assets/resources
pcandidates=

fparties=/Users/tamba.s.lamin/DEV/sloedp/src/assets/resources
pparties=

fpollingcentre=/Users/tamba.s.lamin/DEV/sloedp/src/assets/resources/polling-centres
ppollingcentre=

#Download all Presidential results by national, regional and district
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-president-election-results/all-president-election-results.json
#rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-election-results/all-president-election-results-*.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-president-election-results
wget $ppresident/all-president-election-results.json
cp all-president-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-election-results/

#Download all Presidential results by polling centre
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-president-polling-centre-results-2018/all-president-polling-centre-results-*.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018/all-president-polling-centre-results-*.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-president-polling-centre-results-2018
wget $ppresident/all-president-polling-centre-results-01.json
wget $ppresident/all-president-polling-centre-results-02.json
#wget $ppresident/all-president-polling-centre-results-03.json
#wget $ppresident/all-president-polling-centre-results-04.json

#Download all Parliamentary results by polling centre
cp all-president-polling-centre-results-01.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018/
cp all-president-polling-centre-results-02.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018/
#cp all-president-polling-centre-results-03.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018/

#Download Parliamentary results
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-parliamentary-polling-centre-results-2018/all-parliamentry-polling-centre-results-*.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-parliamentary-polling-centre-results-2018/all-parliamentry-polling-centre-results-*.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-parliamentary-polling-centre-results-2018
wget $pparliamentary/all-parliamentry-polling-centre-results-01.json
cp all-parliamentry-polling-centre-results-01.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-parliamentary-polling-centre-results-2018/


#Download Councillor results
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-councillor-election-results/all-councillor-election-results.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-councillor-election-results/all-councillor-election-results.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-councillor-election-results
wget $pmayorchairperson/all-councillor-election-results.json
cp all-councillor-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-councillor-election-results/


#Download Mayor/Chair results
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-mayor-chair-election-results/all-major-chair-election-results.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-chair-election-results/all-major-chair-election-results.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-mayor-chair-election-results
wget $pmayorchairperson/all-major-chair-election-results.json
cp all-major-chair-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-chair-election-results/


#Download Polling Centres
#all-polling-centres-02.json
#all-polling-centres-01.json

#Download Candidates
#all-candidates.json

#Download Political Parties
#all-political-parties.json

#Download Wards
#all-wards.json

#Download constituencies
#all-constituency.json

#Download Districts
#all-district.json

#Download Regions
#all-regions.json

#wget -o /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-president-polling-centre-results-2018/all-president-polling-centre-results-01.json https://electiondata.io/api/results/presidential/all-president-polling-centre-results-01.json
#wget https://electiondata.io/api/results/presidential/all-president-polling-centre-results-01.json
