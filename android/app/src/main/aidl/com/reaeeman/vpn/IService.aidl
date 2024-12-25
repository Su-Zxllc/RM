package com.reaeeman.vpn;

import com.reaeeman.vpn.IServiceCallback;

interface IService {
  int getStatus();
  void registerCallback(in IServiceCallback callback);
  oneway void unregisterCallback(in IServiceCallback callback);
}