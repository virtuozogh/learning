using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControls : MonoBehaviour
{
    public KeyCode moveUp;
    public KeyCode moveDown;
    public float speed = 15f;
    private Rigidbody2D rb;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    void Awake (){
        rb = GetComponent<Rigidbody2D>();
    }
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(moveUp))
        {
            Debug.Log("You pressed up");
            rb.velocity = new Vector2 (0, speed);
        }
        else if (Input.GetKey(moveDown))
        {
            Debug.Log("You pressed down");
            rb.velocity = new Vector2 (0, -speed);
        }
        else {
            rb.velocity = new Vector2(0, 0);
        }
    }
}
