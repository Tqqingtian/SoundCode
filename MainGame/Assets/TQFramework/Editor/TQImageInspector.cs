/********************************     
* 创建时间：2019-06-30 01:20:39   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
namespace TQ
{

    [CustomEditor(typeof(TQImage))]
    public class TQTextInspector : UnityEditor.UI.ImageEditor
    {
        private SerializedProperty m_Localization;

        protected override void OnEnable()
        {
            base.OnEnable();
            m_Localization = serializedObject.FindProperty("m_Localization");
        }

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            serializedObject.Update();
            EditorGUILayout.PropertyField(m_Localization);

            serializedObject.ApplyModifiedProperties();
        }
    }
}

