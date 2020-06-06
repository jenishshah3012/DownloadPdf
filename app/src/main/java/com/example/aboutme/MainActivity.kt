package com.example.aboutme

import android.app.DownloadManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    var myDownloadID : Long =0
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        dwnldbtn.setOnClickListener{
            var request = DownloadManager.Request(Uri.parse("https://kotlinlang.org/docs/kotlin-docs.pdf"))
                .setTitle("My Resume")
                .setDescription("Resume Downloding")
                .setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE)
                .setAllowedOverMetered(true)

            var dm :DownloadManager = getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager
            myDownloadID=dm.enqueue(request)
        }
        var br=object :BroadcastReceiver(){
            override fun onReceive(context: Context?, intent: Intent?) {
               var id: Long? = intent?.getLongExtra(DownloadManager.EXTRA_DOWNLOAD_ID,-1)
                if(id==myDownloadID)
                {
                    Toast.makeText(applicationContext,"Resume Download Completed",Toast.LENGTH_LONG).show()
                }
            }

        }
        registerReceiver(br, IntentFilter(DownloadManager.ACTION_DOWNLOAD_COMPLETE))
    }
}