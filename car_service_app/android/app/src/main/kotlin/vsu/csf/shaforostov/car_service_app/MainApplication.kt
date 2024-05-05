package vsu.csf.shaforostov.car_service_app

import android.app.Application
import com.yandex.mapkit.MapKitFactory

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setApiKey("bf44d8a3-608a-453e-9fae-e03e53c4ce4c")
    }
}