/********************************     
* 创建时间：2019-06-30 00:33:02   
* 项目名称：MMO
* 作   者：北冰羊
*********************************/
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using TQ;

[CustomEditor(typeof(TQText))]
public class TQTextInspector : UnityEditor.UI.TextEditor
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
