package com.flutter_demo;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "flutter/demo/browser";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                String url = methodCall.argument("url");
                if (methodCall.method.equals("openBrowser")) {
                    if (getActivity() == null) {
                        result.error("Activity Not Available", "Browser can not be open without forground activity", null);
                        return;
                    }

                    Intent next = new Intent(Intent.ACTION_VIEW);
                    next.setData(Uri.parse(url));
                    getActivity().startActivity(next);
                    result.success(true);

                } else {
                    result.notImplemented();
                }
            }
        });

    }

    private Activity getActivity() {
        return this;
    }

}
