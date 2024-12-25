package com.reaeeman.vpn.billing

import android.app.Activity
import android.content.Context
import androidx.lifecycle.MutableLiveData
import com.android.billingclient.api.*
import com.android.billingclient.api.BillingClient.BillingResponseCode
import com.android.billingclient.api.BillingClient.ProductType
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class BillingManager(private val context: Context) {
    private var billingClient: BillingClient
    private val coroutineScope = CoroutineScope(Dispatchers.IO)

    val purchaseUpdateLiveData = MutableLiveData<Purchase>()
    val errorLiveData = MutableLiveData<String>()

    companion object {
        const val SUBSCRIPTION_ID = "vpn_premium_monthly"
    }

    init {
        billingClient = BillingClient.newBuilder(context)
            .setListener { billingResult, purchases ->
                if (billingResult.responseCode == BillingResponseCode.OK && purchases != null) {
                    for (purchase in purchases) {
                        handlePurchase(purchase)
                    }
                }
            }
            .enablePendingPurchases()
            .build()

        connectToGooglePlay()
    }

    private fun connectToGooglePlay() {
        billingClient.startConnection(object : BillingClientStateListener {
            override fun onBillingSetupFinished(billingResult: BillingResult) {
                if (billingResult.responseCode == BillingResponseCode.OK) {
                    // 连接成功，可以查询商品
                    queryAvailableProducts()
                } else {
                    errorLiveData.postValue("Billing setup failed: ${billingResult.debugMessage}")
                }
            }

            override fun onBillingServiceDisconnected() {
                // 尝试重新连接
                connectToGooglePlay()
            }
        })
    }

    private fun queryAvailableProducts() {
        val queryProductDetailsParams = QueryProductDetailsParams.newBuilder()
            .setProductList(
                listOf(
                    QueryProductDetailsParams.Product.newBuilder()
                        .setProductId(SUBSCRIPTION_ID)
                        .setProductType(ProductType.SUBS)
                        .build()
                )
            )
            .build()

        billingClient.queryProductDetailsAsync(queryProductDetailsParams) { billingResult, productDetailsList ->
            if (billingResult.responseCode == BillingResponseCode.OK) {
                // 商品详情获取成功
            } else {
                errorLiveData.postValue("Failed to query product details: ${billingResult.debugMessage}")
            }
        }
    }

    fun launchBillingFlow(activity: Activity, productDetails: ProductDetails) {
        val offerToken = productDetails.subscriptionOfferDetails?.get(0)?.offerToken
        if (offerToken == null) {
            errorLiveData.postValue("Subscription offer not found")
            return
        }

        val billingFlowParams = BillingFlowParams.newBuilder()
            .setProductDetailsParamsList(
                listOf(
                    BillingFlowParams.ProductDetailsParams.newBuilder()
                        .setProductDetails(productDetails)
                        .setOfferToken(offerToken)
                        .build()
                )
            )
            .build()

        billingClient.launchBillingFlow(activity, billingFlowParams)
    }

    private fun handlePurchase(purchase: Purchase) {
        if (purchase.purchaseState == Purchase.PurchaseState.PURCHASED) {
            // 确认购买
            coroutineScope.launch {
                val acknowledgePurchaseParams = AcknowledgePurchaseParams.newBuilder()
                    .setPurchaseToken(purchase.purchaseToken)
                    .build()

                try {
                    val billingResult = withContext(Dispatchers.IO) {
                        billingClient.acknowledgePurchase(acknowledgePurchaseParams) { result ->
                            if (result.responseCode == BillingResponseCode.OK) {
                                purchaseUpdateLiveData.postValue(purchase)
                            }
                        }
                    }
                } catch (e: Exception) {
                    errorLiveData.postValue("Purchase acknowledgement failed: ${e.message}")
                }
            }
        }
    }

    fun endConnection() {
        billingClient.endConnection()
    }
}
