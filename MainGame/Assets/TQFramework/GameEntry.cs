using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    public class GameEntry : MonoBehaviour
    {

        #region 事件属性
        /// <summary>
        /// 事件组件
        /// </summary>
        public static EventComponent Event
        {
            get;
            private set;
        }

        /// <summary>
        /// 时间组件
        /// </summary>
        public static TimeComponent Time
        {
            get;
            private set;
        }
        /// <summary>
        /// 状态机组件
        /// </summary>
        public static FsmComponent Fsm
        {
            get;
            private set;
        }
        /// <summary>
        /// 
        /// </summary>
        public static ProcedureComponent Procedure
        {
            get;
            private set;
        }
        /// <summary>
        /// 数据列表组件
        /// </summary>
        public static DataTableComponent DataTable
        {
            get;
            private set;
        }
        /// <summary>
        /// Socket组件
        /// </summary>
        public static SocketComponent Socket
        {
            get;
            private set;
        }
        /// <summary>
        /// Http组件
        /// </summary>
        public static HttpComponent Http
        {
            get;
            private set;
        }
        /// <summary>
        /// 数据组件
        /// </summary>
        public static DataComponent Data
        {
            get;
            private set;
        }
        /// <summary>
        /// 
        /// </summary>
        public static LocalizationComponent Localization
        {
            get;
            private set;
        }
        /// <summary>
        /// 池组件
        /// </summary>
        public static PoolComponent Pool
        {
            get;
            private set;
        }
        /// <summary>
        /// 场景组件
        /// </summary>
        public static SceneComponent Scene
        {
            get;
            private set;
        }
        /// <summary>
        /// 设置组件
        /// </summary>
        public static SettingComponent Setting
        {
            get;
            private set;
        }
        /// <summary>
        /// 对象组件
        /// </summary>
        public static GameObjComponent GameObj
        {
            get;
            private set;
        }

        /// <summary>
        /// 资源组件
        /// </summary>
        public static ResourceComponent Resource
        {
            get;
            private set;
        }

        /// <summary>
        /// 下载组件
        /// </summary>
        public static DownloadComponent Download
        {
            get;
            private set;
        }

        /// <summary>
        /// UI组件
        /// </summary>
        public static UIComponent UI
        {
            get;
            private set;
        }
        /// <summary>
        /// lua组件
        /// </summary>
        public static LuaComponent Lua;

        #endregion

        #region 基础组件
        /// <summary>
        /// 基础组件的列表
        /// </summary>
        private static readonly LinkedList<TQBaseComponent> m_BaseComponentList = new LinkedList<TQBaseComponent>();

        #region RegisterComponent注册组件
        /// <summary>
        /// 注册组件
        /// </summary>
        /// <param name="component">组件</param>
        internal static void RegisterBaseComponent(TQBaseComponent component)
        {

            //获取组件类型
            Type type = component.GetType();

            LinkedListNode<TQBaseComponent> curr = m_BaseComponentList.First;

            while (curr != null)
            {
                if (curr.Value.GetType() == type) return;
                curr = curr.Next;
            }
            //Debug.Log("" + type.Name + "加入注册组件");
            //把组件加到最后一个节点
            m_BaseComponentList.AddLast(component);
        }
        #endregion

        #region GetComponent 获取组件
        /// <summary>
        /// 获取组件
        /// </summary>
        /// <param name="type">组件类型</param>
        internal static TQBaseComponent GetBaseComponent(Type type)
        {
            LinkedListNode<TQBaseComponent> curr = m_BaseComponentList.First;

            while (curr != null)
            {
                if (curr.Value.GetType() == type)
                {
                    return curr.Value;
                }
                curr = curr.Next;
            }
            return null;

        }
        /// <summary>
        /// 打印日志
        /// </summary>
        /// <param name="resoure"></param>
        /// <param name="v"></param>
        public static void Log(LogCategory catetory, string message,params string[] args)
        {
            switch (catetory)
            {
                case LogCategory.Normal:
#if DEBUG_LOG_NORMAL
                    Debug.Log(args.Length == 0 ? message : string.Format(message, args));
#endif
                    break;
                case LogCategory.Procedure:
#if DEBUG_LOG_PROCEDURE
                     Debug.Log(string.Format("<color=#730FF1>{0}</color>", args.Length == 0 ? message : string.Format(message, args)));
#endif
                    break;
                case LogCategory.Resource:
#if DEBUG_LOG_RESOURCE
                     Debug.Log(string.Format("<color=#EF11B1>{0}</color>", args.Length == 0 ? message : string.Format(message, args)));
#endif
                    break;
                case LogCategory.Proto:
#if DEBUG_LOG_PROTO
                    Debug.Log(args.Length == 0 ? message : string.Format(message, args));
#endif
                    break;
            }
        }

        /// <summary>
        /// 打印错误信息
        /// </summary>
        /// <param name="message"></param>
        /// <param name="args"></param>
        public static void LogError(object message, params object[] args)
        {
#if DEBUG_LOG_ERROR
            Debug.LogError(args.Length == 0 ? message : string.Format(message.ToString(), args));
#endif
        }

        internal static T GetBaseComponent<T>() where T : TQBaseComponent
        {

            return (T)GetBaseComponent(typeof(T));
        }
#endregion
#region InitBaseComponent初始化基础组件
        private static void InitBaseComponent()
        {
            Event = GetBaseComponent<EventComponent>();
           
            Time = GetBaseComponent<TimeComponent>();
            Fsm = GetBaseComponent<FsmComponent>();
            Procedure = GetBaseComponent<ProcedureComponent>();
            DataTable = GetBaseComponent<DataTableComponent>();
            Socket = GetBaseComponent<SocketComponent>();
            Http = GetBaseComponent<HttpComponent>();
            Data = GetBaseComponent<DataComponent>();
            Localization = GetBaseComponent<LocalizationComponent>();
           
            Pool = GetBaseComponent<PoolComponent>();

            Scene = GetBaseComponent<SceneComponent>();
            Setting = GetBaseComponent<SettingComponent>();
            GameObj = GetBaseComponent<GameObjComponent>();
            Resource = GetBaseComponent<ResourceComponent>();
            Download = GetBaseComponent<DownloadComponent>();
            UI = GetBaseComponent<UIComponent>();

            Lua = GetBaseComponent<LuaComponent>();
        }
#endregion

#endregion

        #region 更新组件
        /// <summary>
        /// 更新组件的列表
        /// </summary>
        private static readonly LinkedList<IUpdateComponent> m_UpdateComponentList = new LinkedList<IUpdateComponent>();

        #region RegisterUpdateComponent注册更新组件
        /// <summary>
        /// 注册更新组件
        /// </summary>
        /// <param name="component">组件</param>
        public static void RegisterUpdateComponent(IUpdateComponent component)
        {
            //把组件加到最后一个节点
            m_UpdateComponentList.AddLast(component);
        }
        /// <summary>
        /// 移除更新组件
        /// </summary>
        /// <param name="component">组件</param>
        public static void RemoveUpdateComponent(IUpdateComponent component)
        {
            m_UpdateComponentList.Remove(component);
        }
        #endregion
        #endregion


      
        void Start()
        {
            InitBaseComponent();
        }

        void Update()
        {
            //循环组件
            for (LinkedListNode<IUpdateComponent> curr = m_UpdateComponentList.First; curr != null; curr = curr.Next)
            {
                curr.Value.OnUpdate();
            }
        }
        /// <summary>
        /// 销毁
        /// </summary>
        private void OnDestroy()
        {
            //关闭所有的基础组件
            for (LinkedListNode<TQBaseComponent> curr = m_BaseComponentList.First; curr != null; curr = curr.Next)
            {
                curr.Value.Shutdown();
            }

        }
    }

}
