# Flutter-specific rules
-keep class io.flutter.** { *; }
-keep class androidx.** { *; }
-keep class com.google.** { *; }

# Keep Firebase classes
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }

# Keep Google Play Core classes (required for Flutter app bundles)
-keep class com.google.android.play.core.** { *; }
-keep class io.flutter.embedding.android.FlutterPlayStoreSplitApplication { *; }
-keep class io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager { *; }
-keep class io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager$* { *; }

# Keep PathProvider classes
-keep class dev.flutter.pigeon.path_provider_android.PathProviderApi { *; }
-keep class dev.flutter.pigeon.path_provider_android.PathProviderApi.** { *; }

# Keep Firebase Core classes
-keep class dev.flutter.pigeon.firebase_core_platform_interface.FirebaseCoreHostApi { *; }
-keep class dev.flutter.pigeon.firebase_core_platform_interface.FirebaseCoreHostApi.** { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep custom application classes
-keep class com.muein.app.orders.** { *; }

# Keep serialization classes
-keep class * implements java.io.Serializable { *; }
-keep class * implements android.os.Parcelable { *; }

# Keep annotation classes
-keep class * extends java.lang.annotation.Annotation { *; }

# Keep all enum classes
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep all Kotlin metadata
-keep class kotlin.Metadata { *; }
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}

# Keep all Kotlin reflection
-keep class kotlin.reflect.** { *; }

# Keep all classes with @Keep annotation
-keep @androidx.annotation.Keep class * { *; }
-keep @androidx.annotation.Keep @interface * { *; }
