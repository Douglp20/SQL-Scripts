USE [Circuit]
GO
/****** Object:  StoredProcedure [dbo].[insert_order_callout]    Script Date: 24/10/2021 11:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**************************************************************************************************************************************************************
**                      Name: [update_order_items]
**                      
**                      Desc: 
**                        User Permission
**						 Return values: ALL
**
**                      Called or used by: frmOrderCallout
**
**************************************************************************************************************************************************************
**                      Parameters:
**                      Input
**                      ----------  
**          			List of fields
**
**                      Parameters:
**                      Output
**                      ----------
**						
 
**************************************************************************************************************************************************************
**                      Author: philmore Douglas
**                      Date:    02 August 2018
**
**************************************************************************************************************************************************************
**                      Change History
**          
**                      Date:                            Author:         Description:
**                      -------------           ----------------        ------------------------
**                      02 August 2018                 P Douglas         Return all User Permission
**
**************************************************************************************************************************************************************
**                      Future Changes
**
**************************************************************************************************************************************************************/
CREATE PROCEDURE [dbo].[insert_order_callout]
					(	
					@CompanyID int,
					@calloutNumber varchar(50),	
					@OrderNumber varchar(50),	
					@RefNumber varchar(50),	
				    @Address varchar(50),	
					@PostCode varchar(50),	
					@UserName [varchar](20)
					)
            AS

BEGIN
		   INSERT INTO [dbo].[OrderCallout]
			     (  calloutNumber,	
				    CompanyID , 
					OrderNumber,	
					RefNumber, 
					[Address] ,
					PostCode,
					added_by, 
					added_date
					)
				 VALUES
				 (   @calloutNumber,
					 @CompanyID, 
					 @OrderNumber,
					 @RefNumber, 
					 @Address,
					 @PostCode,					
					 @UserName,	
					 getdate()
			 )				  
		
	END	
	
	

GO
