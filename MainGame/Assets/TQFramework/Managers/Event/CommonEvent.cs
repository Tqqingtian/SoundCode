using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

namespace TQ
{
    /// <summary>
    /// ͨ���¼�
    /// </summary>
    public class CommonEvent: IDisposable
    {
        [CSharpCallLua]
        public delegate void OnActionHandler(object userData);
        public Dictionary<ushort, LinkedList<OnActionHandler>> dic = new Dictionary<ushort, LinkedList<OnActionHandler>>();

        #region AddEventListener ��Ӽ���
        /// <summary>
        /// ��Ӽ���
        /// </summary>
        /// <param name="key"></param>
        /// <param name="handler"></param>
        public void AddEventListener(ushort key, OnActionHandler handler)
        {
            LinkedList<OnActionHandler> lstHandler = null;
            dic.TryGetValue(key, out lstHandler);
            if (lstHandler==null)
            {
                lstHandler = new LinkedList<OnActionHandler>();
                dic[key] = lstHandler;
            }
            lstHandler.AddLast(handler);
        }
        #endregion

        #region RemoveEventListener �Ƴ�����
        /// <summary>
        /// �Ƴ�����
        /// </summary>
        /// <param name="key"></param>
        /// <param name="handler"></param>
        public void RemoveEventListener(ushort key, OnActionHandler handler)
        {
            LinkedList<OnActionHandler> lstHandler = null;
            dic.TryGetValue(key, out lstHandler);
            if (lstHandler!=null)
            {
                lstHandler.Remove(handler);
                if (lstHandler.Count==0)
                {
                    dic.Remove(key);
                }
            }
        }
        #endregion

        #region Dispatch �ɷ�
        /// <summary>
        /// �ɷ�
        /// </summary>
        /// <param name="key"></param>
        /// <param name="p"></param>
        public void Dispatch(ushort key, object userDate)
        {
            LinkedList<OnActionHandler> lstHandler = null;
            dic.TryGetValue(key, out lstHandler);
            if (lstHandler != null)
            {
                for (LinkedListNode<OnActionHandler> curr = lstHandler.First; curr != null; curr = curr.Next)
                {
                    OnActionHandler handler = curr.Value;
                    if (handler != null/*&&handler.Target!=null*/)
                    {
                        handler(userDate);
                    }
                }
            }
        }

        public void Dispatch(ushort key)
        {
            Dispatch(key, null);
        }


        #endregion

        public void Dispose()
        {
            dic.Clear();
        }
    }
}

