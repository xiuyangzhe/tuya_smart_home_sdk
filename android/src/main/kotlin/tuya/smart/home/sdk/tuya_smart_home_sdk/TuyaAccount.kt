package tuya.smart.home.sdk.tuya_smart_home_sdk

import android.widget.Toast
import com.thingclips.smart.android.user.api.IWhiteListCallback
import com.thingclips.smart.android.user.bean.WhiteList
import com.thingclips.smart.home.sdk.ThingHomeSdk;

class TuyaAccount {
    fun getWhiteListWhoCanSendMobileCodeSuccess(){
        ThingHomeSdk.getUserInstance()
            .getWhiteListWhoCanSendMobileCodeSuccess(object : IWhiteListCallback {
                override fun onSuccess(whiteList: WhiteList) {
                }

                override fun onError(code: String, error: String) {
                }
            })

    }
}