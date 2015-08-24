package kr.chann.friedayapp;

import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;


public class IntroActivity extends FragmentActivity {

    Handler h;  //핸들러 선언

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_intro);
        h= new Handler();  // 딜레이를 주기 위한 핸들러 생성
        h.postDelayed(mrun, 3000); // 딜레이 (러너블 객체는 mrun, 3초)
    }

    Runnable mrun = new Runnable(){
        @Override
        public void run(){
            Intent i = new Intent(IntroActivity.this, MainActivity.class); //인텐트 생성(현 액티비티, 새로 실행할 액티비티)
            startActivity(i);
            finish();
            overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
            //overridePendingTransition 이란 함수를 이용하여 순서대로 fade in,out 효과.
        }
    };
    //인트로 중에 뒤로가기를 누를 경우 핸들러를 끊어버림.
    //미 설정시 인트로 중 뒤로가기를 누르면 인트로 후에 홈화면이 나옴.
    @Override
    public void onBackPressed(){
        super.onBackPressed();
        h.removeCallbacks(mrun);
    }
}
