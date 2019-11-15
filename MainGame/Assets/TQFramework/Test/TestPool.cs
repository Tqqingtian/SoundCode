using System.Collections;
using System.Collections.Generic;
using System.Text;
using TQ;
using UnityEngine;
using UnityEngine.UI;

public class TestPool : MonoBehaviour
{
    public Transform tran1;
    public Transform tran2;
    // Use this for initialization
    void Start()
    {


        TQ.GameEntry.Pool.SetClassObjectResideCount<CusUserData>(3);
        Button d;
     
        
        //StartCoroutine(CreateObj());
    }
    private Queue<Transform> m_RoleObjList = new Queue<Transform>();
    Transform obj;
    // Update is called once per frame
    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.A))
        //{
        //    CusUserData data = GameEntry.Pool.DequeueClassObjec<CusUserData>();

        //    CusUserDataAA dataAA = GameEntry.Pool.DequeueClassObjec<CusUserDataAA>();

        //    CusUserDataBB dataBB = GameEntry.Pool.DequeueClassObjec<CusUserDataBB>();

        //    CusUserDataCC dataCC = GameEntry.Pool.DequeueClassObjec<CusUserDataCC>();

        //    StartCoroutine(EnqueueClassObjec(data));

        //    StartCoroutine(EnqueueClassObjec(dataAA));

        //    StartCoroutine(EnqueueClassObjec(dataBB));

        //    StartCoroutine(EnqueueClassObjec(dataCC));
        //}

        //if (Input.GetKeyDown(KeyCode.D))
        //{
        //    StartCoroutine(CreateObj());
        //}
        if (Input.GetKeyDown(KeyCode.B))
        {
            //GameEntry.Pool.GameObjectSpawn(3, (Transform trans) =>
            // {
            //     m_RoleObjList.Enqueue(trans);
            //     //trans.position = 
            // });
            //GameEntry.Pool.GameObjectSpawn(1, (Transform trans) =>
            //{
            //    trans.transform.localPosition += new Vector3(0, 0, 0);
            //    trans.gameObject.SetActive(true);
            //    m_RoleObjList.Enqueue(trans);
            //});
            GameEntry.Pool.GameObjectSpawn(4, (Transform trans) =>
            {
                obj = trans;
            });

        }
        if (Input.GetKeyDown(KeyCode.C))
        {
            GameEntry.Pool.GameObjectDespawn(obj);
            //if (m_RoleObjList.Count>0)
            //{
            //    Transform obj = m_RoleObjList.Dequeue();
            //    GameEntry.Pool.GameObjectDespawn(obj);
            //}
        }

        
    }

    private IEnumerator CreateObj()
    {
        for (int i = 0; i < 20; i++)
        {
            yield return new WaitForSeconds(0.5f);
            GameEntry.Pool.GameObjectSpawn(1, tran1, (Transform instance) =>
            {
                instance.transform.localPosition += new Vector3(0, 0, i * 2);
                instance.gameObject.SetActive(true);
                StartCoroutine(Despawn(1,instance));
            });
            GameEntry.Pool.GameObjectSpawn(2, tran2, (Transform instance) =>
            {
                instance.transform.localPosition += new Vector3(0, 5, i * 2);
                instance.gameObject.SetActive(true);
                StartCoroutine(Despawn(2, instance));
            });
        }
    }
    private IEnumerator Despawn(byte poolId, Transform instance)
    {

        yield return new WaitForSeconds(20f);
        GameEntry.Pool.GameObjectDespawn(poolId, instance);
    }
    private IEnumerator EnqueueClassObjec(object obj)
    {
        yield return new WaitForSeconds(1);
        GameEntry.Pool.EnqueueClassObject(obj);
    }
}
