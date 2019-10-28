using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
namespace TQ
{
    [CSharpCallLua]
    public delegate void BaseAction();

    [CSharpCallLua]
    public delegate void BaseAction<T1>(T1 t1);

    [CSharpCallLua]
    public delegate void BaseAction<T1, T2>(T1 t1, T2 t2);

    [CSharpCallLua]
    public delegate void BaseAction<T1, T2, T3>(T1 t1, T2 t2, T3 t3);

    [CSharpCallLua]
    public delegate void BaseAction<T1, T2, T3, T4>(T1 t1, T2 t2, T3 t3, T4 t4);

    [CSharpCallLua]
    public delegate R BaseFunc<out R>();

    [CSharpCallLua]
    public delegate R BaseFunc<T1, out R>(T1 t1);

    [CSharpCallLua]
    public delegate R BaseFunc<T1, T2, out R>(T1 t1, T2 t2);

    [CSharpCallLua]
    public delegate R BaseFunc<T1, T2, T3, out R>(T1 t1, T2 t2, T3 t3);

    [CSharpCallLua]
    public delegate R BaseFunc<T1, T2, T3, T4, out R>(T1 t1, T2 t2, T3 t3, T4 t4);
}

