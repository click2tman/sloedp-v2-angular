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

fchairperson=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-chairperson-election-results
pchairperson=https://electiondata.io/api/results/chairperson

fmayor=/Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-election-results
pmayor=https://electiondata.io/api/results/major


api/results/chairperson/all-chairperson-election-results.json
api/results/major/all-major-election-results.json


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
wget $pcouncillor/all-councillor-election-results.json
cp all-councillor-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-councillor-election-results/


#Download Mayor results
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-mayor-election-results/all-major-election-results.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-election-results/all-major-election-results.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-mayor-election-results
wget $pmayor/all-major-election-results.json
cp all-major-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-mayor-election-results/

#Download Chair results
rm -rf /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-chairperson-election-results/all-chairperson-election-results.json
rm -rf /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-chairperson-election-results/all-chairperson-election-results.json
cd /Users/tamba.s.lamin/DEV/sloedp/www/assets/results/all-chairperson-election-results
wget $pchairperson/all-chairperson-election-results.json
cp all-chairperson-election-results.json /Users/tamba.s.lamin/DEV/sloedp/src/assets/results/all-chairperson-election-results/


cd /Users/tamba.s.lamin/DEV/sloedp/
git add --all
git commit -am"updated results from latest data from platform"
git pull heroku master
git commit -am"merged latest code with platform content"
git push heroku master

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
