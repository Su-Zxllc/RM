package com.reaeeman.vpn.billing

import android.app.Activity
import com.reaeeman.vpn.MainActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class BillingChannel(private val activity: MainActivity) : MethodCallHandler {
    private lateinit var billingManager: BillingManager
    private lateinit var channel: MethodChannel

    companion object {
        private const val CHANNEL_NAME = "com.reaeeman.vpn/billing"
        private const val METHOD_PURCHASE = "purchase"
        private const val METHOD_RESTORE = "restore"
        private const val METHOD_CHECK_SUBSCRIPTION = "checkSubscription"
    }

    fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL_NAME)
        channel.setMethodCallHandler(this)
        billingManager = BillingManager(activity)

        // 监听购买更新
        billingManager.purchaseUpdateLiveData.observe(activity) { purchase ->
            channel.invokeMethod("onPurchaseUpdate", purchase.originalJson)
        }

        // 监听错误
        billingManager.errorLiveData.observe(activity) { error ->
            channel.invokeMethod("onError", error)
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            METHOD_PURCHASE -> {
                // 启动购买流程
                // TODO: 实现购买逻辑
                result.success(null)
            }
            METHOD_RESTORE -> {
                // 恢复购买
                // TODO: 实现恢复购买逻辑
                result.success(null)
            }
            METHOD_CHECK_SUBSCRIPTION -> {
                // 检查订阅状态
                // TODO: 实现检查订阅状态逻辑
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }

    fun cleanup() {
        billingManager.endConnection()
    }
}
