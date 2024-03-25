using TMPro;
using UnityEngine;

public class ButtonAction : MonoBehaviour
{
    private int count = 0;

    public TextMeshProUGUI textObject;

    public void OnClicked()
    {
        count++;

        textObject.text = count.ToString();
    }
}
