using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TQ;
public class TestScene : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Keypad1))
        {
            GameEntry.Scene.LoadScene(1,true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad2))
        {
            print("Keypad2");
            GameEntry.Scene.LoadScene(2, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad3))
        {
            GameEntry.Scene.LoadScene(3, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad4))
        {
            print("Keypad4");
            GameEntry.Scene.LoadScene(4, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad5))
        {
            GameEntry.Scene.LoadScene(5, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad6))
        {
            GameEntry.Scene.LoadScene(6, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad7))
        {
            GameEntry.Scene.LoadScene(7, true);
        }
        if (Input.GetKeyDown(KeyCode.Keypad8))
        {
            GameEntry.Scene.LoadScene(8, true);
        }
    }
}
