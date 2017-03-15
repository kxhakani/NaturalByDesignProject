select * from client
insert into client(cliName, cliAddress, cityID, cliProvince, cliPCode,  cliPhone, cliConFName, cliConLName, cliConPosition)
	values('A&W', 'Main St.', 2, 'Alberta', 'L3C3W9', '2898210202', 'Joseph', 'Cook', 'Manager');
insert into client(cliName, cliAddress, cityID, cliProvince, cliPCode,  cliPhone, cliConFName, cliConLName, cliConPosition)
	values('Coles', 'Rice Road', 2, 'Ontario', 'L3C3W2', '2898210272', 'Dave', 'L', 'Student');
insert into client(cliName, cliAddress, cityID, cliProvince, cliPCode,  cliPhone, cliConFName, cliConLName, cliConPosition)
	values('NC', 'Clare', 2, 'Alberta', 'L1C3W9', '2898215602', 'John', 'V', 'Employee');
insert into client(cliName, cliAddress, cityID, cliProvince, cliPCode,  cliPhone, cliConFName, cliConLName, cliConPosition)
	values('Super Mall', 'Woodlawn', 2, 'Ontario', 'L2C3W9', '2898210255', 'Jon', 'P', 'Employee');
insert into client(cliName, cliAddress, cityID, cliProvince, cliPCode,  cliPhone, cliConFName, cliConLName, cliConPosition)
	values('Gallery', 'Randolph', 2, 'Alberta', 'L3C3W5', '2898210247', 'Kristina', 'X', 'Employee');


select * from LABOUR_SUMMARY
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(2, 1, 20);
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(2, 2, 30);
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(5, 3, 10);
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(5, 1, 20);
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(6, 2, 30);
insert into LABOUR_SUMMARY(projectID, workerTypeID, lsHours) values(6, 3, 20);

select * from material_req
insert into material_req(inventoryID, projectID, mreqDeliver, mreqInstall, mreqEstQty, mreqActQty)
	values(1, 2, '2012-06-17', '2012-06-17', 4, 1);
insert into material_req(inventoryID, projectID, mreqDeliver, mreqInstall, mreqEstQty, mreqActQty)
	values(6, 2, '2012-06-17', '2012-06-17', 3, null);
insert into material_req(inventoryID, projectID, mreqDeliver, mreqInstall, mreqEstQty, mreqActQty)
	values(11, 5, '2012-06-14', '2012-06-14', 9, 1);
insert into material_req(inventoryID, projectID, mreqDeliver, mreqInstall, mreqEstQty, mreqActQty)
	values(13, 6, '2012-06-18', '2012-06-18', 5, null);
insert into material_req(inventoryID, projectID, mreqDeliver, mreqInstall, mreqEstQty, mreqActQty)
	values(21, 6, '2012-06-18', '2012-06-18', 7, 1);

select * from PROD_TEAM
insert into PROD_TEAM(projectID, workerID, teamPhaseIn) values(2, 3, 'D');
insert into PROD_TEAM(projectID, workerID, teamPhaseIn) values(2, 6, 'D');
insert into PROD_TEAM(projectID, workerID, teamPhaseIn) values(6, 6, 'P');
insert into PROD_TEAM(projectID, workerID, teamPhaseIn) values(6, 7, 'P');

select * from PROD_TOOL
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(2, 1, 2, '2015-05-12', '2015-06-12');
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(2, 2, 3, '2012-05-12', '2012-06-12');
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(5, 3, 7, '2015-05-12', '2015-06-12');
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(5, 1, 5, '2014-05-12', '2014-06-12');
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(6, 2, 9, '2015-05-12', '2015-06-12');
insert into PROD_TOOL(projectID, toolID, ptQty, ptDeliverFrom, ptDeliverTo) Values(6, 3, 6, '2016-05-12', '2016-06-12');

select * from PROJECT
insert into project(projName, projSite, projBidDate, projEstStart, projEstEnd, projActStart, projActEnd, projEstCost, projActCost, projBidCustAccept, projBidMgmtAccept, projCurrentPhase, projIsFlagged, clientID, designerID)
	values('NC proj', 'Library', '2010-05-06','2012-05-06','2012-05-06','2012-05-06','2012-05-06', 1900, 2700, 1, 0, 'Q', 0, 2, 9);
insert into project(projName, projSite, projBidDate, projEstStart, projEstEnd, projActStart, projActEnd, projEstCost, projActCost, projBidCustAccept, projBidMgmtAccept, projCurrentPhase, projIsFlagged, clientID, designerID)
	values('Seaway Mall', 'Store', '2010-05-06','2012-05-06','2012-05-06','2012-05-06','2012-05-06', 1900, 2700, 1, 0, 'Q', 0, 3, 6);
insert into project(projName, projSite, projBidDate, projEstStart, projEstEnd, projActStart, projActEnd, projEstCost, projActCost, projBidCustAccept, projBidMgmtAccept, projCurrentPhase, projIsFlagged, clientID, designerID)
	values('Avendale', 'Inside', '2011-05-06','2011-05-06','2011-05-06','2011-05-06','2011-05-06', 2100, 9000, 1, 1, 'P', 0, 4, 5);

select * from worker
