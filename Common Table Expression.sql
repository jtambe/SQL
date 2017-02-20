GO
with DesignMenu
(MenuId, MenuName, UrlPath, ParentMenuId,level)
As 
(
	select MenuId, MenuName, UrlPath, ParentMenuId, 0 as level
	from Design where menuid = 7

	union all
	
	select D.MenuId, D.MenuName, D.UrlPath, D.ParentMenuId,  level+1 
	from Design D Inner Join DesignMenu DM
	on D.MenuId = DM.ParentMenuId
)

select MenuId, MenuName, UrlPath, ParentMenuId, level
from DesignMenu ;
GO
