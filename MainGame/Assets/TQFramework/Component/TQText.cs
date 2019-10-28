/********************************     
* 创建时间：2019-06-30 00:25:22   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
namespace TQ
{
    public class TQText : Text
    {
        [Header("本地化语言Key")]
        [SerializeField]
        private string m_Localization;
        
        protected override void Start()
        {
            base.Start();
            if (GameEntry.Localization!=null)
            {
                text = GameEntry.Localization.GetString(m_Localization);
            }
        }
    }
}

