/********************************     
* 创建时间：2019-06-28 22:19:55   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// ui对象池
    /// </summary>
    public class UIPool
    {
        /// <summary>
        /// 对象池的列表
        /// </summary>
        private LinkedList<UIFormBase> m_UIFormList;

        public UIPool()
        {
            m_UIFormList = new LinkedList<UIFormBase>();

        }
        /// <summary>
        /// 从ui对象池中获取ui
        /// </summary>
        /// <param name="uiFormId"></param>
        /// <returns></returns>
        internal UIFormBase Dequeue(int uiFormId)
        {
            for (LinkedListNode<UIFormBase> curr = m_UIFormList.First; curr != null; curr = curr.Next)
            {
                if (curr.Value.UIFormId == uiFormId)
                {
                    m_UIFormList.Remove(curr.Value);
                    return curr.Value;
                }
            }
            return null;
        }
        /// <summary>
        /// ui回池
        /// </summary>
        /// <param name="form"></param>
        internal void Enqueue(UIFormBase form)
        {
            form.gameObject.SetActive(false);
            m_UIFormList.AddLast(form);
        }
        /// <summary>
        /// 检查释放是否可以
        /// </summary>
        internal void CheckClear()
        {
            for (LinkedListNode<UIFormBase> curr = m_UIFormList.First; curr != null;)
            {
                if (!curr.Value.IsLock && Time.time > curr.Value.CloseTime + GameEntry.UI.UIExpire)
                {
                    //销毁ui
                    Object.Destroy(curr.Value.gameObject);
                    GameEntry.Pool.ReleaseInstanceResource(curr.Value.gameObject.GetInstanceID());

                    LinkedListNode<UIFormBase> next = curr.Next;
                    m_UIFormList.Remove(curr);
                    curr = next;
                }
                else
                {
                    curr = curr.Next;
                }
            }
        }
        /// <summary>
        /// 防止过多的ui
        /// </summary>
        public void CheckByOpenUI()
        {
            if (m_UIFormList.Count<=GameEntry.UI.UIPoolMaxCount)
            {
                return;
            }
            for (LinkedListNode<UIFormBase> curr = m_UIFormList.First; curr != null;)
            {
                //
                if (m_UIFormList.Count == GameEntry.UI.UIPoolMaxCount + 1)
                {
                    //如果池中的数量在指定数量就不会在销毁
                    break;
                }
                if (!curr.Value.IsLock)
                {
                    //销毁ui
                    Object.Destroy(curr.Value.gameObject);
                    GameEntry.Pool.ReleaseInstanceResource(curr.Value.gameObject.GetInstanceID());
                    LinkedListNode<UIFormBase> next = curr.Next;
                    m_UIFormList.Remove(curr);
                    curr = next;
                }
                else
                {
                    curr = curr.Next;
                }
            }
        }
    }
}

