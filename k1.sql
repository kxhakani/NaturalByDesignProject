SELECT        WORKER.wrkFName, WORKER.wrkLName, WORKER_TYPE.wrkTypeDesc, SUM(LABOUR_REQUIREMENT.lreqEstHours) AS Hours, WORKER_TYPE.wrkTypeCost, SUM(LABOUR_REQUIREMENT.lreqEstHours) 
                         * WORKER_TYPE.wrkTypeCost AS [Ext. Cost], LABOUR_REQUIREMENT.lreqEstDate AS Time, TASK.taskDesc AS Tasks
FROM            LABOUR_REQUIREMENT INNER JOIN
                         TASK ON LABOUR_REQUIREMENT.taskID = TASK.ID INNER JOIN
                         PROD_TEAM ON LABOUR_REQUIREMENT.prodTeamID = PROD_TEAM.ID INNER JOIN
                         WORKER ON PROD_TEAM.workerID = WORKER.ID INNER JOIN
                         PROJECT ON PROD_TEAM.projectID = PROJECT.ID AND WORKER.ID = PROJECT.designerID INNER JOIN
                         WORKER_TYPE ON WORKER.wrkTypeID = WORKER_TYPE.ID
GROUP BY TASK.taskDesc, LABOUR_REQUIREMENT.lreqEstDate, WORKER.wrkFName, WORKER.wrkLName, WORKER.wrkTypeID, PROJECT.ID, WORKER_TYPE.wrkTypeDesc, WORKER_TYPE.wrkTypeCost
HAVING        (PROJECT.ID =1)

select * from LABOUR_REQUIREMENT
--select * from TASK
select * from PROD_TEAM
select * from WORKER
select * from PROJECT
select * from WORKER_TYPE
select * from LABOUR_SUMMARY

select sum(lreqEstHours*) from LABOUR_REQUIREMENT
inner join PROD_TEAM on LABOUR_REQUIREMENT.prodTeamID = PROD_TEAM.ID
inner join project on PROD_TEAM.projectID = 1
inner join labour
where PROD_TEAM.projectID = 1