//==============================
//����ʱ�䣺{0}\r\n", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
//==============================
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;

public class TestAsync : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {
    }
    
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.K))
        {
            //TestMethod();

            //关键词 Task async await
            //Task.Factory.StartNew(TestMethod);
            TestMethodAsync();
        }
    }
    
    public async void TestMethodAsync()
    {
        //await Task.Delay(1);
        ////调用普通方法也不行
        //TestMethod();


        //for (int i = 0; i < 5000; i++)
        //{
        //    print(i);
        //    await Task.Delay(1);
        //}

        int result = await Test1();
        print(result);
    }

    public async Task<int> Test1()
    {
        int ret = 0;
        for (int i = 0; i < 100; i++)
        {
            ret += 1;
            await Task.Delay(1);
        }
        return ret;
    }
    private void TestMethod()
    {
        for (int i = 0; i < 5000; i++)
        {
            print(i);
        }
    }

}
