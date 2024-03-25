using System.Collections.Generic;
using UnityEngine;

public class Core : MonoBehaviour
{
    private void Awake()
    {
        Application.runInBackground = false;
    }

    // Start is called before the first frame update
    void Start()
    {
        EnableMultiDisplay();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void EnableMultiDisplay()
    {
        for (var i = 1; i < Display.displays.Length; i++)
        {
            Display.displays[i].Activate();
        }
    }
}
