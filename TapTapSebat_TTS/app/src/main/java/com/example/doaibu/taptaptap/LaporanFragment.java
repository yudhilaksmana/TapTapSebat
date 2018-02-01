package com.example.doaibu.taptaptap;


import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SimpleCursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;


/**
 * A simple {@link Fragment} subclass.
 */
public class LaporanFragment extends Fragment {

    private View z;
    private String JSON_STRING;
    private ListView listView;


    public LaporanFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        z = inflater.inflate(R.layout.fragment_laporan, container, false);
        getJSON();
        return z;
    }

    private void showPerokok(){
        JSONObject jsonObject = null;
        ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
        try{
            jsonObject = new JSONObject(JSON_STRING);
            JSONArray result = jsonObject.getJSONArray(Konfigurasi.TAG_JSON_ARRAY);

            for(int i = 0;i<result.length();i++){
                JSONObject jo = result.getJSONObject(i);
                String id = jo.getString(Konfigurasi.TAG_IDP);
                String hwid = jo.getString(Konfigurasi.TAG_HWID);

                HashMap<String, String> perokok = new HashMap<>();
                perokok.put(Konfigurasi.TAG_IDP, id);
                perokok.put(Konfigurasi.TAG_HWID, hwid);
                list.add(perokok);
            }
        } catch(JSONException e) {
            e.printStackTrace();
        }
        ListAdapter adapter = new SimpleAdapter(
                getContext(), list, R.layout.list_item,
                new String[]{Konfigurasi.TAG_IDP,Konfigurasi.TAG_HWID},
                new int[]{R.id.id,R.id.hwid});

        listView.setAdapter(adapter);
    }

    private void getJSON(){
        class GetJSON extends AsyncTask<Void, Void, String> {
            ProgressDialog loading;


            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                loading = ProgressDialog.show(getContext(),"Mengambil Data..","Mohon Tunggu..",false,false);
            }

            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                loading.dismiss();
                JSON_STRING = s;
                showPerokok();
            }

            @Override
            protected String doInBackground(Void... params) {
                RequestHandler rh = new RequestHandler();
                String s = rh.sendGetRequest(Konfigurasi.URL_GET_ALL);
                return s;
            }
        }

        GetJSON gj = new GetJSON();
        gj.execute();

    }

    public static Fragment newInstance() {
        LaporanFragment fragment = new LaporanFragment();
        return fragment;
    }
}
