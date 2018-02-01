package com.example.doaibu.taptaptap;


import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Settings;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.location.LocationListener;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;


/**
 * A simple {@link Fragment} subclass.
 */
public class TapFragment extends Fragment implements LocationListener {

    ImageButton imgbtn;
    LocationManager lm;
    static double lat;
    static double lng;
    private View z;

    public TapFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        z = inflater.inflate(R.layout.fragment_tap, container, false);

        imgbtn = (ImageButton) z.findViewById(R.id.imageButton);

        if(ContextCompat.checkSelfPermission(getActivity().getApplicationContext(), Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(getActivity().getApplicationContext(), Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(getActivity(), new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 101);
        }

        imgbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                insertData();
            }
        });

        // Inflate the layout for getActivity() fragment
        return z;
    }

    public void insertData(){

        // get hwid
        final String hwid = Settings.Secure.getString(getActivity().getContentResolver(), Settings.Secure.ANDROID_ID);

        //get lat&lng
        getLoc();
        final String lattostr = String.valueOf(lat);
        final String lngtostr = String.valueOf(lng);

        //get temp id_rokok
        final String id_rk = "1";

        //get current datetime
        Date curDate = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        final String DateToStr = format.format(curDate);

        class insertData extends AsyncTask<Void, Void, String> {
            ProgressBar loading;

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                Toast.makeText(getActivity(),s,Toast.LENGTH_LONG).show();
            }

            @Override
            protected String doInBackground(Void... v) {
                HashMap<String,String> params = new HashMap<>();
                params.put(Konfigurasi.KEY_PRK_HWID,hwid);
                params.put(Konfigurasi.KEY_PRK_LAT,lattostr);
                params.put(Konfigurasi.KEY_PRK_LNG,lngtostr);
                params.put(Konfigurasi.KEY_PRK_WAKTU,DateToStr);
                params.put(Konfigurasi.KEY_PRK_IDR,id_rk);

                RequestHandler rh = new RequestHandler();
                String res = rh.sendPostRequest(Konfigurasi.URL_ADD, params);
                return res;
            }
        }

        insertData id = new insertData();
        id.execute();
    }

    void getLoc(){
        try {
            lm = (LocationManager) getActivity().getSystemService(Context.LOCATION_SERVICE);
            Location location = lm.getLastKnownLocation(LocationManager.GPS_PROVIDER);
            lng = location.getLongitude();
            lat = location.getLatitude();
            lm.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 2000, 5, (LocationListener) getActivity());
        }
        catch(SecurityException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onLocationChanged(Location location) {
        lat = location.getLatitude();
        lng = location.getLongitude();
    }

    @Override
    public void onProviderDisabled(String provider) {

    }

    @Override
    public void onStatusChanged(String provider, int status, Bundle extras) {

    }

    @Override
    public void onProviderEnabled(String provider) {

    }

    public static Fragment newInstance() {
        TapFragment fragment = new TapFragment();
        return fragment;
    }
}
