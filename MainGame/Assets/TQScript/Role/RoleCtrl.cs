using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
using XLua;


[RequireComponent(typeof(PolyNavAgent))]
public class RoleCtrl : MonoBehaviour
{
    [CSharpCallLua]
    public delegate void OnStartHandler(Transform trans);
    OnStartHandler onStart;


    [CSharpCallLua]
    public delegate void OnUpdateHandler();
    OnUpdateHandler onUpdate;

    [CSharpCallLua]
    public delegate void OnDestroyHandler();
    OnDestroyHandler onDestroy;


    private PolyNavAgent _agent;


    public PolyNavAgent agent
    {
        get
        {
            if (!_agent)
                _agent = GetComponent<PolyNavAgent>();
            return _agent;
        }
    }

    private Vector2 CurrMovePoint;

    private Transform PointUI;

    private float CurrRotateAngle;

    private LuaEnv luaEnv;

    // Start is called before the first frame update
    void Start()
    {
        luaEnv = LuaManager.luaEnv; //此处要从LuaManager上获取 全局只有一个
        if (luaEnv == null) return;
        onStart = luaEnv.Global.GetInPath<OnStartHandler>(this.GetType().Name + ".OnStart");
        onUpdate = luaEnv.Global.GetInPath<OnUpdateHandler>(this.GetType().Name + ".OnUpdate");
        onDestroy = luaEnv.Global.GetInPath<OnDestroyHandler>(this.GetType().Name + ".OnDestroy");
        if (onStart != null)
        {
            onStart(this.transform);
        }


        GameEntry.Pool.GameObjectSpawn(6, (Transform trans) =>
        {
            PointUI = trans;
        });
    }

    // Update is called once per frame
    void Update()
    {
        if (onUpdate != null)
        {
            onUpdate();
        }
        //CurrRotateAngle = agent.rotateAngle;

        //print(CurrRotateAngle);
        //CurrRoleModel.transform.position = CurrMovePoint.transform.position;
        //if (Input.GetMouseButton(0))
        //{
        //    CurrMovePoint = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        //    agent.SetDestination(CurrMovePoint, (bool isToTarget) =>
        //     {
        //         if (isToTarget)
        //         {
        //             print("到了");
        //         }
        //     });
        //    StartCoroutine(TargetPoint());
        //}

        CameraAutoFollow();
    }
    private IEnumerator TargetPoint()
    {
        PointUI.gameObject.SetActive(true);
        PointUI.position = new Vector3(CurrMovePoint.x, CurrMovePoint.y + 0.1f);
        yield return new WaitForSeconds(1);
        PointUI.gameObject.SetActive(false);
    }

    #region CameraAutoFollow 摄像机自动跟随
    /// <summary>
    /// 摄像机自动跟随
    /// </summary>
    private void CameraAutoFollow()
    {
        if (CameraCtrl.Instance == null) return;

        CameraCtrl.Instance.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y, gameObject.transform.position.z - 10);
    }
    #endregion


    private void OnDestroy()
    {
        if (onDestroy != null)
        {
            onDestroy();
        }
    }
}
