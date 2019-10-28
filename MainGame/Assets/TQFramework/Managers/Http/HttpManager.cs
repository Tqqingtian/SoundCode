using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace TQ
{
    public class HttpManager : ManagerBase
    {

        /// <summary>
        /// ����http����
        /// </summary>
        /// <param name="url"></param>
        /// <param name="callBack"></param>
        /// <param name="isPost"></param>
        /// <param name="json"></param>
        public void SendData(string url, HttpSendDataCallBack callBack, bool isPost = false, bool isGetData = false, Dictionary<string, object> dic = null)
        {
            //

            //Debug.Log("�ӳ��л�ȡhttp������");
            HttpRoutine http = GameEntry.Pool.DequeueClassObject<HttpRoutine>();

            http.SendData(url, callBack, isPost, isGetData, dic);


        }
    }
}

