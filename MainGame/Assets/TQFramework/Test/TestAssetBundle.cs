using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;

public class TestAssetBundle : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            Debug.Log("卸载分类资源池中的资源");
            GameEntry.Pool.PoolManager.ReleaseAssetPool();
            
        }
        if (Input.GetKeyDown(KeyCode.A))
        {
            Debug.Log("卸载不用的资源");
            Resources.UnloadUnusedAssets();
        }
    }
}
