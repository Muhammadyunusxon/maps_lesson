package uz.demos.maps_lesson

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("7d50db16-5ffc-465d-b673-1b31dd63ff68") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}