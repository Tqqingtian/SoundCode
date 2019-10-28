//作    者：北冰洋
//创建时间：
using TQ;

/// <summary>
/// Socket协议监听（工具生成）
/// </summary>
public sealed class SocketProtoListener
{
    /// <summary>
    /// 添加协议监听
    /// </summary>
    public static void AddProtoListener()
    {
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.System_HeartbeatReturn, System_HeartbeatReturnHandler.OnSystem_HeartbeatReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.System_GameServerConfigReturn, System_GameServerConfigReturnHandler.OnSystem_GameServerConfigReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.RoleOperation_EnterGameReturn, RoleOperation_EnterGameReturnHandler.OnRoleOperation_EnterGameReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Role_ListTest, Role_ListTestHandler.OnRole_ListTest);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Task_SearchTaskReturn, Task_SearchTaskReturnHandler.OnTask_SearchTaskReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Shop_BuyProductReturn, Shop_BuyProductReturnHandler.OnShop_BuyProductReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Backpack_GoodsChangeReturn, Backpack_GoodsChangeReturnHandler.OnBackpack_GoodsChangeReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Backpack_SearchReturn, Backpack_SearchReturnHandler.OnBackpack_SearchReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Goods_SearchEquipDetailReturn, Goods_SearchEquipDetailReturnHandler.OnGoods_SearchEquipDetailReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Goods_SellToSysReturn, Goods_SellToSysReturnHandler.OnGoods_SellToSysReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Goods_UseItemReturn, Goods_UseItemReturnHandler.OnGoods_UseItemReturn);
        GameEntry.Event.SocketEvent.AddEventListener(ProtoCodeDef.Goods_EquipPutReturn, Goods_EquipPutReturnHandler.OnGoods_EquipPutReturn);
    }

    /// <summary>
    /// 移除协议监听
    /// </summary>
    public static void RemoveProtoListener()
    {
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.System_HeartbeatReturn, System_HeartbeatReturnHandler.OnSystem_HeartbeatReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.System_GameServerConfigReturn, System_GameServerConfigReturnHandler.OnSystem_GameServerConfigReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.RoleOperation_EnterGameReturn, RoleOperation_EnterGameReturnHandler.OnRoleOperation_EnterGameReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Role_ListTest, Role_ListTestHandler.OnRole_ListTest);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Task_SearchTaskReturn, Task_SearchTaskReturnHandler.OnTask_SearchTaskReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Shop_BuyProductReturn, Shop_BuyProductReturnHandler.OnShop_BuyProductReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Backpack_GoodsChangeReturn, Backpack_GoodsChangeReturnHandler.OnBackpack_GoodsChangeReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Backpack_SearchReturn, Backpack_SearchReturnHandler.OnBackpack_SearchReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Goods_SearchEquipDetailReturn, Goods_SearchEquipDetailReturnHandler.OnGoods_SearchEquipDetailReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Goods_SellToSysReturn, Goods_SellToSysReturnHandler.OnGoods_SellToSysReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Goods_UseItemReturn, Goods_UseItemReturnHandler.OnGoods_UseItemReturn);
        GameEntry.Event.SocketEvent.RemoveEventListener(ProtoCodeDef.Goods_EquipPutReturn, Goods_EquipPutReturnHandler.OnGoods_EquipPutReturn);
    }
}