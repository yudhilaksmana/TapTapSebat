package com.example.doaibu.taptaptap;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * A simple {@link Fragment} subclass.
 */
public class SimulasiFragment extends Fragment {


    public SimulasiFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_simulasi, container, false);
    }

    public static Fragment newInstance() {
        SimulasiFragment fragment = new SimulasiFragment();
        return fragment;
    }
}
